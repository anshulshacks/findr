import 'package:findr1/models/database.dart';
import 'package:flutter/material.dart';

import '../models/club.dart';
import '../models/person.dart';
import '../widgets/club_tile.dart';
import 'friend_finder.dart';
import 'profile.dart';

class ClubFindScreen extends StatefulWidget {
  const ClubFindScreen({Key? key}) : super(key: key);

  @override
  State<ClubFindScreen> createState() => _ClubFindScreenState();
}

class _ClubFindScreenState extends State<ClubFindScreen> {
  String _search = "";
  final myController = TextEditingController();

  List<Club> clubs = Database().getClubs();

  int getNewLength() {
    int count =  0;
    if (_search != "") {
    for (Club c in clubs) {
      if (c.description.contains(_search)) {
        count++;
      }
    }
    }
    else {
      return clubs.length;
    }
    return count;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/findrlogo.jpeg',
                          width: 100,
                          height: 100,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    const Text(
                      'Findr',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.group,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('Find clubs'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClubFindScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.add_reaction_rounded,
                  color: Theme.of(context).primaryColor,
                ),
                title: const Text('Add Friends'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FriendFindScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: new AppBar(title: Text("Club Finder")),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: myController,
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
                itemCount: getNewLength(),
                itemBuilder: ((context, index) {
                  if (_search == "") {
                    return ClubTile(clubs[index]);
                  } else {
                    if (clubs[index].description.contains(_search)) {
                      return ClubTile(clubs[index]);
                    }
                  }
                  throw 'no';
                }),
              ),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                _search = myController.text;
              });
            }, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Search", style: TextStyle(fontSize: 24)),
          )),
          ],
        ));
  }
}
