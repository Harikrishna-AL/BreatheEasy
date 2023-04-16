import 'package:flutter/material.dart';
class CardG extends StatefulWidget{
  const CardG({Key? key}) : super(key: key);
  @override
  State<CardG> createState() => _CardGState();
}

class _CardGState extends State<CardG>{
  Widget build(BuildContext context){
    return Container(
        child: Card(
        elevation: 0,
          shadowColor: Colors.teal,
          color: Colors.teal.shade700.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(35), topRight: Radius.circular(35)),
          ),
          margin: EdgeInsets.all(0),
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
              children: <Widget>[
              Align(
              alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                  Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                    // alignment: Alignment.center,
                                    children: <Widget> [Icon(
                                      Icons.co2_rounded,
                                      color: Colors.teal,
                                      size: 60,
                                    ),
                                    Text(
                                      'Amount of CO2:',
                                      style: TextStyle(color: Colors.teal),
                                    )]),
                              ),
                              Expanded(
                                child: Column(
                                  // alignment: Alignment.center,
                                    children: <Widget> [Icon(
                                      Icons.masks_outlined,
                                      color: Colors.teal,
                                      size: 60,
                                    ),
                                      Text(
                                        'Amount of CO2:',
                                        style: TextStyle(color: Colors.teal),
                                      )]),)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child:  Column(
                                  // alignment: Alignment.center,
                                    children: <Widget> [Icon(
                                      Icons.group,
                                      color: Colors.teal,
                                      size: 60,
                                    ),
                                      Text(
                                        'Number of People:',
                                        style: TextStyle(color: Colors.teal),
                                      )]),
                              ),
                              Expanded(
                                child:  Column(
                                  // alignment: Alignment.center,
                                    children: <Widget> [Icon(
                                      Icons.bubble_chart,
                                      color: Colors.teal,
                                      size: 60,
                                    ),
                                      Text(
                                        'O2 Levels:',
                                        style: TextStyle(color: Colors.teal),
                                      )]),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            )
          ]),
    ),
        ),



    );
  }
}
