import 'Club.dart';
import 'Person.dart';

class Person {
  String firstName;
  String lastName;
  int age;
  List<Person> friends;
  List<Club> clubs;

  Person(this.firstName, this.lastName, this.age, this.friends, this.clubs);

  void addFriend(Person f) {
    friends.add(f);
    f.addFriend(this);
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
