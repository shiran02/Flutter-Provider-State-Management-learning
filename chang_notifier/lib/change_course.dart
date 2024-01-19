import 'package:flutter/material.dart';

class ChangeCourse extends ChangeNotifier{
  String subject = "";

  void changeSubject(String newSubject){
    this.subject = newSubject;
    notifyListeners();
  }
}