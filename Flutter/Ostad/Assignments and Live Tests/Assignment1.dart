//1. Book Class
class Book{
String title;
String author;
double price;

Book(this.title, this.author, this.price);

double discountedPrice(double discountPercent){
    return price - (price*discountPercent/100);
}

@override
String toString(){
    return '''Book information:
    Title: $title
    Author:  $author
    Price:  $price''';
}

}

//2. Employee class and Manager and Developer subclasses
class Employee{
    String name;
    double salary;

Employee(this.name, this.salary);

}

class Manager extends Employee{
    String department;
    Manager(super.name, super.salary, this.department);

    void displayInfo(){
    print('''Manager information:
    Name: $name
    Salary:  $salary
    Department: $department''');
    }
}

class Developer extends Employee{
    String programmingLanguage;
    Developer(super.name, super.salary,this.programmingLanguage);

    void displayInfo(){
        print('''Developer information:
        Name: $name
        Salary:  $salary
        Programming Language: $programmingLanguage''');
    }
}


//3. Abstract class Appliance 

abstract class Appliance {
    void turnOn();
    void turnOff(); 
}

class Fan extends Appliance{
    @override
    void turnOn(){
        print("Fan is now running");
    }

    @override
    void turnOff(){
        print("Fan is switched off");
    }
}

class Light extends Appliance{
    @override
    void turnOn(){
        print("Light is switched on");
    }

    @override
    void turnOff(){
        print("Light is switched off");
    }
}

void main(){
//1. Book Class

Book book1 = Book("Me Before You", "Jojo Moyes", 309);
Book book2 = Book("The Martian", "Andy Weir", 404);

print(book1);
print("Discounted Price(10%): ${book1.discountedPrice(10)}");
print("-------------------------------");
print(book2);
print("Discounted Price(15%): ${book2.discountedPrice(15)}");

Manager manager = Manager("Abc", 65000, "Mobile App Development");
manager.displayInfo();

Developer developer = Developer("Aqila", 53000, "Dart");
developer.displayInfo();

Fan fan = Fan();
Light light = Light();

fan.turnOn();
fan.turnOff();

light.turnOn();
light.turnOff();

}