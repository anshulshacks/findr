import 'package:findr1/models/person.dart';

class Club {
  String name;
  List<Person> members;
  String city;
  String state;
  String country;
  String description;

  Club(this.name,  this.description, this.members, this.city, this.state, this.country);

}