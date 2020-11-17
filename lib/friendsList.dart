import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './listWidget.dart';

class FriendsList extends StatefulWidget {
  @override
  _FriendsListState createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Friends'),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Friends').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView(
                children: snapshot.data.docs.map((document) {
                  return Container(
                    child: ListWidget(
                      name: document['Name'],
                      place: document['Place'],
                    ),
                  );
                }).toList(),
              );
            }
          },
        ));
  }
}
