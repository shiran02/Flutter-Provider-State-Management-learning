import 'package:flutter/material.dart';

class DataClass extends ChangeNotifier{
  int _x = 0;
  int get x => _x;

  void incrementX(){
    _x++;
    notifyListeners(); // update() setState()
  }
  void decrementX(){
    _x--;
    notifyListeners(); // update() setState()
  }
}