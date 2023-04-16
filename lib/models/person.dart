import 'club.dart';


class Person {
  String firstName;
  String lastName;
  int age;
  List<Person> friends;
  List<Club> clubs;

  Person(this.firstName, this.lastName, this.age, this.friends, this.clubs);

  void addFriend(Person f) {
    friends.add(f);

  }

  void addClub(Club c) {
    clubs.add(c);

  }

  int numFriends() {
    return friends.length;
  }

  int numClubs() {
    return clubs.length;
  }
}
