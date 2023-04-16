import 'club.dart';
import 'person.dart';

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
      "country",
      "https://thumbs.dreamstime.com/b/golf-club-ball-grass-photo-34501227.jpg");
  Club art = Club(
      "Painting",
      "Learn how to paint using many different styles and connect with other painters just like you!",
      [],
      "city",
      "state",
      "country",
      "https://thumbs.dreamstime.com/b/colorful-abstract-acrylic-painting-natural-dynamic-mixture-colors-flow-background-30555980.jpg");
  Club car = Club(
      "Cars",
      "Vroom vroom! Learn about the different parts of cars! A place to ask about cars, share cars, and so much more!",
      [],
      "city",
      "state",
      "country",
      "https://thumbs.dreamstime.com/b/charging-modern-electric-car-battery-street-which-future-automobile-close-up-power-supply-plugged-being-103315910.jpg");
  Club theatre = Club(
      "Theatre",
      "A place for actors, amateurs, and beginners who just want to learn! You never know... one day you might just connect with a celebrity here!",
      [],
      "city",
      "state",
      "country",
      "https://thumbs.dreamstime.com/b/theatre-14459628.jpg");
  Club gaming = Club(
      "Gaming",
      "Discuss about your games, asks for tips, play with other member! Our club has it all! Remember to ALWAYS have fun! Keep gaming!",
      [],
      "city",
      "state",
      "country",
      "https://thumbs.dreamstime.com/b/gaming-game-play-video-tv-monitor-gamer-concept-fun-gamepad-guy-controller-console-playing-player-holding-hobby-playful-81406429.jpg");
  Person joe = Person("Joe", "Alvarado", 15, [], [], "https://thumbs.dreamstime.com/b/man-golfing-15314543.jpg");
  Person eloy = Person("Eloy", "Skinner", 29, [], [], "https://thumbs.dreamstime.com/b/portrait-person-driving-car-19846568.jpg");
  Person hong = Person("Hong", "Valencia", 43, [], [], "https://thumbs.dreamstime.com/b/young-person-drawing-sprays-graffiti-artist-painting-aerosol-color-cans-wall-young-person-drawing-154785323.jpg");
  Person dennis = Person("Dennis", "Gomez", 17, [], [], "https://thumbs.dreamstime.com/b/students-taking-acting-class-drama-college-54990701.jpg");
  Person nola = Person("Nola", "Benjamin", 51, [], [], "https://thumbs.dreamstime.com/b/person-playing-starcraft-ii-pc-game-gaming-convention-monitor-80046048.jpg");
  Person tory = Person("Tory", "Dean", 23, [], [], "https://thumbs.dreamstime.com/b/angry-young-driver-driving-car-shouting-92492446.jpg");
  Person katrina = Person("Katrina", "Fuller", 35, [], [], "https://thumbs.dreamstime.com/b/teenage-girl-golfing-1021315.jpg");
  Person jerrod = Person("Jerrod", "Bradford", 40, [], [], "https://thumbs.dreamstime.com/b/man-gaming-smartphone-portrait-funny-home-60038610.jpg");
  Person mable = Person("Mable", "Richards", 27, [], [], "https://thumbs.dreamstime.com/b/young-muscular-man-performing-theatrical-pose-stage-very-sexy-costume-85626150.jpg");
  Person ronda = Person("Ronda", "Chandler", 18, [], [], "https://thumbs.dreamstime.com/b/fright-face-woman-driving-car-21729051.jpg");
  Person irwin = Person("Irwin", "King", 35, [], [], "https://thumbs.dreamstime.com/b/female-painter-drawing-art-studio-using-easel-portrait-young-woman-painting-aquarelle-paints-white-canvas-side-70264165.jpg");
  Person rosemary = Person("Rosemary", "Yang", 44, [], [], "https://thumbs.dreamstime.com/b/high-spirits-delighted-blonde-expressing-positivity-painting-pleasure-happy-senior-female-person-looking-her-easel-137064903.jpg");
  Person eliza = Person("Eliza", "Armstrong", 28, [], [], "https://thumbs.dreamstime.com/b/golf-player-woman-8842789.jpg");
  Person jacinda = Person("Jacinda", "Haas", 31, [], [], "https://thumbs.dreamstime.com/b/young-african-american-woman-driving-car-portrait-smiling-75125313.jpg");
  Person todd = Person("Todd", "Camacho", 21, [], [], "https://thumbs.dreamstime.com/b/man-acting-18108783.jpg");
  Person dana = Person("Shivank", "Zengchenko", 21, [], [], "https://image.cnbcfm.com/api/v1/image/107178740-1673644452489-gettyimages-1388419349-img_5093.jpeg?v=1673649280");
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
    ronda.addClub(car);
    ronda.addFriend(hong);
    irwin.addClub(art);
    irwin.addClub(gaming);
    rosemary.addClub(theatre);
    rosemary.addClub(art);
    rosemary.addFriend(jerrod);
    rosemary.addFriend(irwin);
    eliza.addClub(golf);
    golf.addMembers(eliza);
    eliza.addClub(art);
    eliza.addFriend(joe);
    jacinda.addClub(car);
    todd.addClub(car);
    todd.addClub(theatre);
    todd.addFriend(jacinda);
    dana.addFriend(todd);
    dana.addFriend(eliza);
    dana.addFriend(rosemary);
    dana.addClub(gaming);
    dana.addClub(art);
  }
  List<Person> getPeople() {
    return [joe, eloy, hong, dennis, nola, tory, katrina, jerrod, mable, ronda, irwin, rosemary, eliza, jacinda, todd];
  }
  List<Club> getClubs() {
    return [golf, art, car, theatre, gaming];
  }
}