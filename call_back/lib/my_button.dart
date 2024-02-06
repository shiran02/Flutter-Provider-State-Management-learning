import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  
  final String topic;
  final Function callBackFunction;

  const MyButton({super.key , required this.topic ,required this.callBackFunction});



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callBackFunction(topic);
        print('tapped');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.purple.shade300,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
            child: Text(
          topic,
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
