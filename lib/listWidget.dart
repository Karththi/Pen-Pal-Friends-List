import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String name;
  final String place;
  ListWidget({this.name, this.place});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Container(
            child: Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            width: double.infinity,
          ),
          Container(
            child: Text(
              place,
              style: TextStyle(fontSize: 18),
            ),
            width: double.infinity,
          )
        ]),
      ),
    );
  }
}
