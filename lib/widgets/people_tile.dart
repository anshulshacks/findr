import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/person.dart';
import '../screens/person_screen.dart';

class PeopleTile extends StatelessWidget {
  Person p;
  PeopleTile(this.p);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PersonScreen(p)),
  );
        },

        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(p.image),
      
          ),
          title: Text("${p.firstName} ${p.lastName}"),
      
        ),
      ),
    );
  }
}
