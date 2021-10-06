import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  // print('Think Question');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: Icon(Icons.arrow_back_ios_new_outlined,
      ),
       title: Center(child: Padding(
         padding: const EdgeInsets.only(left:9,right:69),
         child: Text('Magic Ball',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
       )),
        
      ),
      
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 85, 0, 5),
          child: Column(
            children: [
              Ball(),
              Text('Ask a Question ?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40), 
              ),
              Text('&',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              Text('--TAP--',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),


            ],
          ),
        ),
      ),
    ),
    );

  }
}
class Ball extends StatefulWidget {
  Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
       child: FlatButton(
           onPressed:(){
             setState(() {
             ballNumber = Random().nextInt(5) + 1;
             });
            //  print(ballNumber);
           },
        child: Image.asset('images/ball$ballNumber.png'),
    ),
     );
  }
}