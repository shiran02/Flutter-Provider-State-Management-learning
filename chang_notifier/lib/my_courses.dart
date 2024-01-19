import 'package:chang_notifier/change_course.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCourses extends StatelessWidget {
  String course;
  MyCourses({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<ChangeCourse>(context,listen: false).changeSubject(course);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.purple.shade300,
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Center(
          child: Text(
            '${course}',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
