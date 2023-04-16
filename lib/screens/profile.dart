import 'package:findr1/models/database.dart';
import 'package:findr1/screens/club_finder.dart';
import 'package:findr1/screens/friend_finder.dart';
import 'package:findr1/widgets/club_tile.dart';
import 'package:findr1/widgets/people_tile.dart';
import 'package:flutter/material.dart';

import '../models/person.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Person p = Database().dana;
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
              title: const Text('Add clubs'),
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
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: [
          Image.network(p.image),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.centerLeft,
            child: Text(
              "${p.firstName} ${p.lastName}",
              style: TextStyle(
                fontSize: 33,
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
          Row(
            children: [
              Text(
                'Friends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(width: 150),
              Text(
                'Clubs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: p.friends.length,
                    itemBuilder: (context, index) =>
                        PeopleTile(p.friends[index]),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: p.clubs.length,
                    itemBuilder: (context, index) => ClubTile(p.clubs[index]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
