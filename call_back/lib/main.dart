import 'package:call_back/my_button.dart';
import 'package:call_back/my_toggle_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "PAckages";

  callback(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  bool click = false;
  int clickNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Learning flutter',
            style: TextStyle(fontSize: 30),
          ),
        ),
        
        
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100, left: 20, right: 20),
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                  child: Text(
                'We are learning Flutter ' + topic,
                style: TextStyle(fontSize: 20),
              )),
            ),

            MyButton(topic: 'Getx', callBackFunction: callback),
            MyButton(topic: 'Provider', callBackFunction: callback),
            MyButton(topic: 'Block', callBackFunction: callback),
            ToggleBtn(callBack: callback),

            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:
                        Color.fromRGBO(0, 0, 0, 0.25), // Set the shadow color
                    spreadRadius: 1, // Set the spread radius of the shadow
                    blurRadius: 8, // Set the blur radius of the shadow
                    offset: Offset(0, 4), // Set the offset of the shadow
                  ),
                ],
                color: Colors.amber,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {

                          print(clickNumber);

                          if(clickNumber == 0){
                            setState(() {
                              click = !click;
                              clickNumber = 1;
                            });
                          } 
                          

                          print(click);
                          print(clickNumber);
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: clickNumber == 1 ?  Colors.blue : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'I Liked ',
                              style: TextStyle(
                                fontSize: 22, 
                                color: clickNumber == 1 ?  Colors.white : Colors.blue,
                                ),
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {

                          if(clickNumber == 1){
                            setState(() {
                              click = !click;
                              clickNumber = 0;
                            });
                          } 
                          

                          print(click);
                          print(clickNumber);
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: clickNumber == 0 ?  Colors.blue : Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Others Liked',
                              style: TextStyle(
                                fontSize: 22, 
                                color: clickNumber == 0 ?  Colors.white : Colors.blue,
                                ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            )

            // Container(
            //   height: 60,
            //   margin: EdgeInsets.symmetric(horizontal: 10),
            //   width: Get.width,
            //   decoration: BoxDecoration(

            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 60,
            //         // margin: EdgeInsets.symmetric(horizontal: 10),
            //         width: Get.width * 0.17,
            //         decoration: BoxDecoration(
            //           color: Colors.amber,
            //           borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(10),
            //               bottomLeft: Radius.circular(10)),
            //         ),
            //         child: Icon(Icons.search, size: 36),
            //       ),
            //       SizedBox(
            //         width: 30,
            //       ),
            //       Container(
            //         height: 60,
            //         alignment: Alignment.center,
            //         width: Get.width * 0.41,
            //         child: TextFormField(
            //           decoration: InputDecoration(
            //             border: InputBorder.none,
            //             hintText: 'Search Listing...',
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
