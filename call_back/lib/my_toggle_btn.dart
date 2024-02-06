import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleBtn extends StatelessWidget {
  late String name;
  Function callBack;

  ToggleBtn({super.key , required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25), // Set the shadow color
            spreadRadius: 1, // Set the spread radius of the shadow
            blurRadius: 8, // Set the blur radius of the shadow
            offset: Offset(0, 4), // Set the offset of the shadow
          ),
        ],
      ),
      child: ToggleSwitch(
        minWidth: 140.0,
        minHeight: 80.0,
        fontSize: 16.0,
        activeBgColor: [Colors.blue],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.white,
        inactiveFgColor: Colors.blue,
        totalSwitches: 2,
        labels: ['I Liked ', 'Others Liked'],
        onToggle: (index) {

          if(index == 0 ){
            name = 'like';
          }else{
            name = 'dont like';
          }
          callBack(name);
        },
      ),
    );
  }
}
