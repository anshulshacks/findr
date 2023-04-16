import 'package:findr1/widgets/club_tile.dart';
import 'package:flutter/material.dart';

import '../models/person.dart';

class PersonScreen extends StatelessWidget {
  Person p;
  PersonScreen(this.p);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${p.firstName} ${p.lastName}"),
      ),
      body: Column(
        children: [
          Image.network(
            p.image,
            // p.firstName == "Joe"
            //     ? "https://img.freepik.com/premium-photo/time-bicycle-man-cycling-nature-checking-his-stopwatch-cardio-workout-training-exercise-outdoors-fitness-forest-healthy-person-proud-his-bike-riding-natural-woods_590464-86989.jpg"
            //     : "https://img.freepik.com/free-photo/smiley-woman-doing-pottery-indoors_23-2148944913.jpg",
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "${p.firstName} ${p.lastName}",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Age: ${p.age}",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "${p.numFriends()} friends",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "Clubs",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return ClubTile(p.clubs[index]);
              }),
              itemCount: p.clubs.length,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Add Friend", style: TextStyle(fontSize: 24)),
          )),
        ],
      ),
    );
  }
}
