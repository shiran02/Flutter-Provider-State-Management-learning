import 'package:cart_app/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Text('0', style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                Spacer(),
                Text("Total", style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 40),)
              ],
            ),
          ),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [

                GestureDetector(child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(
                          color: Color(0xFF716f72),
                          width: 1
                      )
                  ),
                ),
                onTap: (){
                  Get.snackbar("Item", "Can not more than this",
                        backgroundColor: Colors.black,
                        colorText: Colors.white,
                        titleText: Text(
                          "Item",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white
                          ),
                        ),
                        messageText: Text(
                          "Can not be more than this",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        )
                    );
                },),
                Spacer(),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      color: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(

                      children: [
                        GestureDetector(
                            onTap: (){
                              Get.to(()=>SecondPage(), transition: Transition.upToDown, duration: Duration(seconds: 1));
                            },
                            child: Text("Next Page", style: TextStyle(fontSize: 20, color: Colors.white),)),
                        Spacer(),
                        Icon(Icons.skip_next, color:Colors.white)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}