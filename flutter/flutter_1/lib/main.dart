void main() {
  final coding = Coding(
      name: 'Nicholas',
      age: 21,
      hobby: 'develop apps',
      beginner: 'C#',
      intermediate: 'Dart',
      master: 'Java');
  print(coding.toString());
}

class Person {
  Person({this.name, this.age, this.hobby});
  final String? name;
  final int? age;
  final String? hobby;
  String toString() => 'my name is $name and I am $age';
}

class Coding extends Person {
  Coding(
      {String? name,
      int? age,
      String? hobby,
      this.beginner,
      this.intermediate,
      this.master})
      : super(name: name, age: age, hobby: hobby);
  final String? beginner;
  final String? intermediate;
  final String? master;
  String toString() => "${super.toString()}, I master in $master";
}
