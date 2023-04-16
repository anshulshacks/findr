import 'person.dart';

class Club {
  String name;
  List<Person> members;
  String city;
  String state;
  String country;
  String description;
  String image;

  Club(this.name, this.description, this.members, this.city, this.state,
      this.country, this.image);

  void addMembers(Person m) {
    members.add(m);
  }
}