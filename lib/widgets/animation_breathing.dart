import 'package:breathing_collection/breathing_collection.dart';
// import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter/material.dart';

class animation extends StatefulWidget{
  const animation({Key? key}) : super(key: key);
  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation>{
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(left:30, right:30, bottom: 30, top: 100),
      child: Column(
      children: [BreathingGlowingButton(
        buttonBackgroundColor: Color(0xFF000000),
        glowColor: Color(0xFFA7FFEB),
        height: 200.0,
        width: 200.0,
        icon : Icons.bubble_chart,
        iconColor : Colors.white,
        onTap : () {
          // do something
        },
      ),
        ])
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),

      // body: Center(
      //   child: Card(
      //     margin: EdgeInsets.all(10),
      //     shape:RoundedRectangleBorder(
      //         side:  BorderSide(color: Colors.green,width: 3),
      //         borderRadius: BorderRadius.all(Radius.circular(15))
      //     ),
      //     elevation: 50,
      //     shadowColor: Colors.black,
      //     color: Colors.greenAccent[100],
      //     child: SizedBox(
      //       width: 300,
      //       height: 500,),
      //
      //   ),
      // ),
    );
  }
}
