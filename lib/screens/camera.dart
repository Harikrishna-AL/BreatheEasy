import 'package:flutter/material.dart';
import 'package:plant_biomass/widgets/animation_breathing.dart';
import 'package:plant_biomass/widgets/card.dart';
import 'package:plant_biomass/widgets/new_animation.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().getImage(source: source);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
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

        child: Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Column(

              children: [
                _image == null
                    ? Text('No image selected.', style: TextStyle(
                  color: Colors.teal, // Change text color to red
                  fontSize: 20, // Example font size
                  fontWeight: FontWeight.bold,
                  // Example font weight
                ),textAlign:TextAlign.center,)
                    : Image.file(_image!),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 250),),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.teal,
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.camera_alt, color: Colors.black,),
                              title: Text('Take a picture'),
                              onTap: () {
                                _getImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.photo_library, color: Colors.black,),
                              title: Text('Choose from gallery'),
                              onTap: () {
                                _getImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                tooltip: 'Pick Image',
                child: Icon(Icons.add_a_photo, color: Colors.black,),
              ),


            ),
          ],
        ),),
    ),
    );
  }
}