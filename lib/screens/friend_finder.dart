import 'package:findr1/models/database.dart';
import 'package:flutter/material.dart';

import '../models/club.dart';
import '../models/person.dart';
import '../widgets/club_tile.dart';
import '../widgets/people_tile.dart';
import 'club_finder.dart';
import 'profile.dart';

class FriendFindScreen extends StatefulWidget {
  const FriendFindScreen({Key? key}) : super(key: key);

  @override
  State<FriendFindScreen> createState() => _FriendFindScreenState();
}

class _FriendFindScreenState extends State<FriendFindScreen> {
  String _search = "";
  TextEditingController myController = TextEditingController();
  List<Person> people = Database().getPeople();
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
                itemCount: people.length,
                itemBuilder: ((context, index) {
                  print(_search);
                  if (_search == "") {
                    return PeopleTile(people[index]);
                  } else {
                    if (people[index].firstName.contains(_search) ||
                        people[index].lastName.contains(_search)) {
                      return PeopleTile(people[index]);
                    }
                  }
                  // PeopleTile(people[index]);
                  throw '';
                }),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _search = myController.text;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Search", style: TextStyle(fontSize: 24)),
                )),
          ],
        ));
  }
}
