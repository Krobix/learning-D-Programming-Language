//TODO: finish
module person;
import std;

struct PersonData {
    string name;
    float weight;
    int age;
    int gender; //0 is male, 1 is female
    float lbs_per_year;
    bool is_alive = true;
}

class Person {
public:
    PersonData *get_data();
    Person(string name, int age, int gender, float lbs_per_year);
    void age_up();
private:
    PersonData *data;
}

Person::Person(string name, int age, int gender, float lbs_per_year) {
    this->data->name = name;
    this->data->weight = 100.0;
    this->data->age = age;
    this->data->lbs_per_year = lbs_per_year;
}

PersonData *Person::get_data(){
    return this->data;
}

void Person::age_up(){
    int age = this->data->age++;
    if ((age > 115) && (this->data->is_alive)) {
        writefln("%s has died of old age.", this->data->name);
        this->data->is_alive = false;
    }
}

void main()
{
    writeln("Hello D");
    string d_is_very_cool = "D IS VERY COOL!";
    
}
