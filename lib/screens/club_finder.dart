import 'package:flutter/material.dart';

import '../models/club.dart';
import '../models/person.dart';
import '../widgets/club_tile.dart';

class ClubFindScreen extends StatefulWidget {

  const ClubFindScreen({Key? key}) : super(key: key);

  @override
  State<ClubFindScreen> createState() => _ClubFindScreenState();
}

class _ClubFindScreenState extends State<ClubFindScreen> {

  List<Club> clubs = [
    Club("Pokemon", "test", [], "Cupertinio", "CA", "US"),
    Club("Pokemon2", "test", [], "Cupertinio", "CA", "US"),
    Club("Pokemon3", "test", [], "Cupertinio", "CA", "US"),

  ] as List<Club>;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text("Club Finder")),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter club",
                  border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(0)),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: clubs.length,
                itemBuilder: ((context, index) => ClubTile(clubs[index])),
              ),
            )
            
          ],
        ));
  }
}
