import 'club.dart';


class Person {
  String firstName;
  String lastName;
  int age;
  List<Person> friends;
  List<Club> clubs;
  String image;

  Person(this.firstName, this.lastName, this.age, this.friends, this.clubs, this.image);

  void addFriend(Person f) {
    friends.add(f);

  }

  void addClub(Club c) {
    clubs.add(c);
    c.addMembers(this);

  }

  int numFriends() {
    return friends.length;
  }

  int numClubs() {
    return clubs.length;
  }
}