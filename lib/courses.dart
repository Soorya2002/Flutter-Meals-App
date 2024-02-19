import 'package:flutter/material.dart';
import 'package:meals/model/course_box.dart';
import 'package:meals/myappbar.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Select a Menu Category",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            CourseBox(),
          ],
        ),
      ]),
    );
  }
}
