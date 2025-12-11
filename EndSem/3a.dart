void main() {
  greet();
  Person p = Person("Anish");
  p.show();
}

void greet() => print("Hello!");

class Person {
  String name;
  Person(this.name);
  void show() => print("Name: $name");
}
