import 'package:flutter/material.dart';
import 'package:plant_biomass/widgets/animation_breathing.dart';
import 'package:plant_biomass/widgets/card.dart';
import 'package:plant_biomass/widgets/new_animation.dart';
import 'package:getwidget/getwidget.dart';
import 'package:plant_biomass/widgets/shopping_card.dart';

class MarketScreen extends StatefulWidget{
  const MarketScreen({Key? key}) : super(key: key);
  @override
  State<MarketScreen> createState() => _MarketScreenState();
}


class _MarketScreenState extends State<MarketScreen>{
  TextEditingController _textFieldController1 = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  TextEditingController _textFieldController3 = TextEditingController();
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade600,
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.teal.shade100,
                title: Text('Enter Details'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _textFieldController1,
                      decoration: InputDecoration(hintText: "Seller's Name"),
                    ),
                    TextField(
                      controller: _textFieldController2,
                      decoration: InputDecoration(hintText: "Plant Name"),
                    ),
                    TextField(
                      controller: _textFieldController3,
                      decoration: InputDecoration(hintText: "Price"),
                    )
                  ],
                ),
                // actions: <Widget>[
                //   TextButton(
                //
                //     child: Text('CANCEL',style: TextStyle(color: Colors.black),),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //   ),
                //   TextButton(
                //     child: Text('SUBMIT',style: TextStyle(color: Colors.black),),
                //     onPressed: () {
                //       String name = _textFieldController1.text;
                //       String email = _textFieldController2.text;
                //       // Do something with the data
                //       Navigator.pop(context);
                //     },
                //   ),
                // ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body:Container(
      decoration: BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.05, 0.3],
          colors: [Colors.teal.shade900.withOpacity(0.9), Colors.black],
        ),
      ),
      child: SingleChildScrollView(
    child: Column(

      children: <Widget> [Align(
        alignment: Alignment.topLeft,
        child:
        Card(
        color: Colors.transparent,
        margin: EdgeInsets.only(top: 50,  bottom: 20),
        child: Row(
          children: [Text('No image selected.', style: TextStyle(
          color: Colors.teal, // Change text color to red
          fontSize: 30, // Example font size
          fontWeight: FontWeight.bold,
          // Example font weight
        ),textAlign:TextAlign.left,),
          CircleAvatar(
            backgroundImage: AssetImage("./assets/animated_plant.gif"),
          )]
      ))),
        ShoppingItemCard(
        name: "Tulsi Plant",
        imageUrl: "https://flowersnfruits-image.s3.ap-south-1.amazonaws.com/uploads/product-pics/auspicious-tulsi-plant.jpg",
        price: 100,
      ),
        ShoppingItemCard(
          name: "Some Plant",
          imageUrl: "https://cdn.shopify.com/s/files/1/0579/7924/0580/products/money-plant-golden-with-hanging-pot-31808857440388.jpg?v=1675601828",
          price: 200,
        ),
        ShoppingItemCard(
          name: "Tulsi Plant",
          imageUrl: "https://flowersnfruits-image.s3.ap-south-1.amazonaws.com/uploads/product-pics/auspicious-tulsi-plant.jpg",
          price: 100,
        ),
        ShoppingItemCard(
          name: "Tulsi Plant",
          imageUrl: "https://flowersnfruits-image.s3.ap-south-1.amazonaws.com/uploads/product-pics/auspicious-tulsi-plant.jpg",
          price: 100,
        ),],),),


    ));
  }
}
