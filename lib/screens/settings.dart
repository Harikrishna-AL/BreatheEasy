import 'package:flutter/material.dart';
import 'package:plant_biomass/widgets/animation_breathing.dart';
import 'package:plant_biomass/widgets/card.dart';
import 'package:plant_biomass/widgets/new_animation.dart';
import 'package:getwidget/getwidget.dart';


class SettingsScreen extends StatefulWidget{
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}


class _SettingsScreenState extends State<SettingsScreen>{
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.05, 0.3],
          colors: [Colors.teal.shade900.withOpacity(0.9), Colors.black],
        ),
      ),


    );
  }
}
