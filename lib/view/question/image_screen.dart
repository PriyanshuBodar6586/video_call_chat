import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

class Image_Screen extends StatefulWidget {
  const Image_Screen({Key? key}) : super(key: key);

  @override
  State<Image_Screen> createState() => _Image_ScreenState();
}

class _Image_ScreenState extends State<Image_Screen> {
  double ? height;
  double ? width;
  File f1 = File("");

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              Image.asset("assets/image/LOC.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pushNamed(context,'nick');
                      }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                    ],
                  ),
                  SizedBox(height: height!*0.1,),
                  Text("Upload your photo",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: height!*0.13,),
                  InkWell(
                    onTap: (){
                      bottomsheetdilaog();
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white30,
                      ),
                      child: f1.path.isEmpty?Container(height: 150,width: 150,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white,width: 5),),
                        child: Icon(Icons.photo_camera_outlined,color: Colors.white,size: 70,),):CircleAvatar(backgroundImage: FileImage(f1),
                      ),
                    ),
                  ),
                  SizedBox(height: height!*0.13,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              f1.path.isEmpty?
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Expanded(
                                    child: AlertDialog(
                                      title: Text('Red Alert',style: TextStyle(color: Colors.red),),
                                      content: Text('Please Upload a Photo'),
                                      actions: [
                                        InkWell(onTap:(){
                                          Navigator.pop(context);
                                        },
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Container(
                                              child: Text("ok",style: TextStyle(fontSize: 20),),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ) :Navigator.pushNamed(context,'your');
                            },
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                depth: 4,
                                lightSource: LightSource.topLeft,
                                color: Colors.white60,
                              ),child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/image/Rectangle 2.jpg",fit: BoxFit.fill, height: height!*0.07,width: width!*0.85,)),),
                          ),
                          Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
  void bottomsheetdilaog(){
    showModalBottomSheet(
        backgroundColor: Colors.purple.shade600,
        context:context,
        builder:(context){
          return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), color: Colors.white,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.camera);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);
                },child: Text("Take Photo",style: TextStyle(fontSize: 20),)),
                InkWell(onTap: ()async{
                  ImagePicker img = ImagePicker();
                  XFile? f2 =  await img.pickImage(source: ImageSource.gallery);
                  setState((){
                    f1 = File(f2!.path);
                  });
                  Navigator.pop(context);
                },
                    child: Text("Choose From Library",style: TextStyle(fontSize: 20))),
                InkWell(onTap: (){
                  Navigator.pop(context);
                },child: Text("Cancel",style: TextStyle(fontSize: 20))),
              ],
            ),
          );
        }
    );
  }
}