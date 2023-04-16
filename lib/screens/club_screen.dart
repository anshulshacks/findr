import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/club.dart';
import '../models/database.dart';
import '../widgets/people_tile.dart';

class ClubScreen extends StatelessWidget {
  Club cb;
  ClubScreen(this.cb);
  

  @override
  Widget build(BuildContext context) {
    print(cb.members.length);
    return Scaffold(
        appBar: new AppBar(title: Text(cb.name)),
        body: Column(
          children: [
            Image.network(cb.image),
            Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              cb.name,
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
              cb.description,
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
              "Members",
              style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
              ),
              textAlign: TextAlign.left,
            ),
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: cb.members.length,
                itemBuilder: ((context, index) {
                  return PeopleTile(cb.members[index]);
                }),
              ),
            ),
            ElevatedButton(onPressed: () {
              Database().dana.addClub(cb);
            }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Join Club", style: TextStyle(fontSize: 24)),
          )),
          ],
        ));
  }
}
