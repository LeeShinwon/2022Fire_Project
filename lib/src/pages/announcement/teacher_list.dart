import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireproject/src/pages/announcement/teacher_card.dart';
import 'package:fireproject/src/size.dart';
import 'package:flutter/material.dart';
import 'announce_card.dart';

class TeacherList extends StatefulWidget {
  const TeacherList({Key? key}) : super(key: key);

  @override
  _TeacherListState createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {

  @override
  Widget build(BuildContext context) {


    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('/teacher').snapshots(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Column(
            children: [
              SizedBox(
                height: getScreenHeight(context) * 0.2,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return TeacherCard(doc: snapshot.data!.docs[index]);
                  },
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black54,
              ),
            ],
          );
        });
  }
}