import 'package:flutter/material.dart';
import 'package:plant_biomass/widgets/animation_breathing.dart';
import 'package:plant_biomass/widgets/card.dart';
import 'package:plant_biomass/widgets/new_animation.dart';
import 'package:getwidget/getwidget.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen>{
  Widget build(BuildContext context){
    return Container(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      //   color: Colors.black,
        decoration: BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.05, 0.3],
            colors: [Colors.teal.shade900.withOpacity(0.9), Colors.black],
          ),
        ),
        child: Column(
          children: [Container(child:animation()),
                      Expanded(child:CardG())],
    ),


    );
  }
}
