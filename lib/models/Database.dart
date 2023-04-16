import 'Club.dart';
import 'Person.dart';

class Database {
  String gDesc =
      "Golf lovers unite. Connect with other golfers and learn different skills such as putting.";
  String aDesc =
      "Learn how to paint using many different styles and connect with other painters just like you!";
  String cDesc =
      "Vroom vroom! Learn about the different parts of cars! A place to ask about cars, share cars, and so much more!";
  String tDesc =
      "A place for actors, amateurs, and beginners who just want to learn! You never know... one day you might just connect with a celebrity here!";
  String gaDesc =
      "Discuss about your games, asks for tips, play with other member! Our club has it all! Remember to ALWAYS have fun! Keep gaming!";
  Club golf = Club(
      "Golf",
      "Golf lovers unite. Connect with other golfers and learn different skills such as putting.",
      [],
      "city",
      "state",
      "country");
  Club art = Club(
      "Painting",
      "Learn how to paint using many different styles and connect with other painters just like you!",
      [],
      "city",
      "state",
      "country");
  Club car = Club(
      "Cars",
      "Vroom vroom! Learn about the different parts of cars! A place to ask about cars, share cars, and so much more!",
      [],
      "city",
      "state",
      "country");
  Club theatre = Club(
      "Theatre",
      "A place for actors, amateurs, and beginners who just want to learn! You never know... one day you might just connect with a celebrity here!",
      [],
      "city",
      "state",
      "country");
  Club gaming = Club(
      "Gaming",
      "Discuss about your games, asks for tips, play with other member! Our club has it all! Remember to ALWAYS have fun! Keep gaming!",
      [],
      "city",
      "state",
      "country");
  Person joe = Person("Joe", "Alvarado", 15, [], []);
  Person eloy = Person("Eloy", "Skinner", 29, [], []);
  Person hong = Person("Hong", "Valencia", 43, [], []);
  Person dennis = Person("Dennis", "Gomez", 17, [], []);
  Person nola = Person("Nola", "Benjamin", 51, [], []);
  Person tory = Person("Tory", "Dean", 23, [], []);
  Person katrina = Person("Katrina", "Fuller", 35, [], []);
  Person jerrod = Person("Jerrod", "Bradford", 40, [], []);
  Person mable = Person("Mable", "Richards", 27, [], []);
  Person ronda = Person("Ronda", "Chandler", 18, [], []);
  Person irwin = Person("Irwin", "King", 35, [], []);
  Person rosemary = Person("Rosemary", "Yang", 44, [], []);
  Person eliza = Person("Eliza", "Armstrong", 28, [], []);
  Person jacinda = Person("Jacinda", "Haas", 31, [], []);
  Person todd = Person("Todd", "Camacho", 21, [], []);
  Database() {
    joe.addClub(golf);
    joe.addClub(art);
    joe.addClub(car);
    joe.addClub(theatre);
    joe.addClub(gaming);
    joe.addFriend(hong);
    joe.addFriend(dennis);
    eloy.addClub(car);
    eloy.addClub(gaming);
    eloy.addClub(theatre);
    eloy.addFriend(todd);
    eloy.addFriend(jacinda);
    hong.addClub(art);
    hong.addClub(golf);
    hong.addFriend(jerrod);
    dennis.addClub(golf);
    dennis.addClub(car);
    dennis.addClub(theatre);
    dennis.addFriend(nola);
    dennis.addFriend(irwin);
    nola.addClub(gaming);
    nola.addClub(golf);
    nola.addClub(art);
    nola.addFriend(mable);
    tory.addClub(car);
    tory.addFriend(katrina);
    tory.addFriend(todd);
    katrina.addClub(theatre);
    katrina.addClub(golf);
    katrina.addFriend(hong);
    jerrod.addClub(gaming);
    jerrod.addClub(car);
    jerrod.addClub(theatre);
    jerrod.addClub(golf);
    jerrod.addFriend(irwin);
    mable.addClub(theatre);
    mable.addFriend(katrina);
    ronda.addClub(art);
    ronda.addClub(gaming);
    ronda.addClub(golf);
    ronda.addFriend(hong);
    irwin.addClub(art);
    irwin.addClub(gaming);
    rosemary.addClub(theatre);
    rosemary.addFriend(jerrod);
    rosemary.addFriend(irwin);
    eliza.addClub(golf);
    eliza.addClub(art);
    eliza.addFriend(joe);
    jacinda.addClub(car);
    todd.addClub(car);
    todd.addFriend(jacinda);
  }
  List<Person> getPeople() {
    return [joe, eloy, hong, dennis, nola, tory, katrina, jerrod, mable, ronda, irwin, rosemary, eliza, jacinda, todd];
  }
  List<Club> getClubs() {
    return [golf, art, car, theatre, gaming];
  }
}
