import 'package:flutter/material.dart';
import '../models/club.dart';
import '../screens/club_screen.dart';

class ClubTile extends StatelessWidget {
  Club cb;
  ClubTile(this.cb);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ClubScreen(cb)),
  );
        },
        child: ListTile(
          // leading: Icon(dayEvents[index].icon),
          title: Text(
            cb.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: cb.description == null
              ? const Text('No extra information')
              : Text('${cb.description}'),
        ),
      ),
    );
  }
}
