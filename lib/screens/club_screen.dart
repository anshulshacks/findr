import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/club.dart';

class ClubScreen extends StatelessWidget {
  Club cb;
  ClubScreen(this.cb);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text(cb.name)),
        body: Column(
          children: [
            Container(
                child: Text(
              cb.description,
              style: TextStyle(fontSize: 24),
            )),
            Container(
                child: Text(
              "Based in ${cb.city}, ${cb.state}",
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return ListTile(title: Text("title"),);
                }),
              ),
            )
          ],
        ));
  }
}
