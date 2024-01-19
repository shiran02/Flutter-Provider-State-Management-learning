import 'package:chang_notifier/change_course.dart';
import 'package:chang_notifier/my_courses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  
  runApp(
    ChangeNotifierProvider(
      create: (_) => ChangeCourse(),
      child: MyApp(),
    )
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            Container(
              margin: EdgeInsets.only(top: 100,left: 20,right: 20),
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.purple.shade300, 
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Center(
                child:  Consumer<ChangeCourse>(
                  builder: (context, changeCourse, child) {
                    return Text(
                      "We are Learning " + changeCourse.subject,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    );
                  },
                ),
              ),
            ),

            MyCourses(course:'dart'),
            MyCourses(course:'Getx'),
            MyCourses(course:'java Scripts'),


          ],
        ),
      ),
    );
  }
}
