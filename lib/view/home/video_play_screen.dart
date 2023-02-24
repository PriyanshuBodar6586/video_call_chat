import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

import '../../provider/home_provider.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;

  // VideoPlayerController? videoPlayerController;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        "${Provider.of<Home_Provider>(context, listen: false).Datapickkk!.video}")
      ..initialize().then((value) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });
  }

  File? _capturedImage;

  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return WillPopScope(
      onWillPop: dialog,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Builder(builder: (context) {
              if (_capturedImage != null) {
                return Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.file(_capturedImage!),
                    ],
                  ),
                );
              }
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 1,
                        width: MediaQuery.of(context).size.width * 0.99,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: _controller.value.isInitialized
                                ? AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller))
                                : Center(
                                    child: const CircularProgressIndicator(
                                    color: Colors.green,
                                  ))),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: SmartFaceCamera(
                        showCameraLensControl: false,
                        showControls: false,
                        showFlashControl: false,
                        autoCapture: true,
                        //  autoCapture: true,
                        defaultCameraLens: CameraLens.front,
                        onCapture: (File? image) {
                          _capturedImage = image;
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(onPressed: () {
                        reportdilopg();
                      }, child: Text("Report")),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(onPressed: () {
                        Navigator.pushNamed(context,'bottom');
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User has been Block successfully"),));
                      }, child: Text("Block")),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              );
            }),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: () {
                    dialog();
                  },
                  child: Icon(
                    Icons.call,
                    size: 40,
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            )),
      ),
    );
  }
  void reportdilopg(){
    showModalBottomSheet(context: context,
        builder: (context){
      return Container(
        height: 70.h,
        width: 100.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(20)),color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
            SizedBox(
              height: 2.h,
            ),
               Container(height: 1.h,width: 15.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey),),
              SizedBox(
                height: 2.h,
              ),
              Text("Report",style: TextStyle(fontSize: 20.sp),),
              SizedBox(
                height: 1.h,
              ),
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Report has been sent successfully"),));
                  Navigator.pushNamed(context,'play');
                },
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("it's spam",style: TextStyle(fontSize: 15.sp),),

                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(onTap: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Report has been sent successfully"),));
                Navigator.pushNamed(context,'play');
              },
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("i just don't like it",style: TextStyle(fontSize: 15.sp),),

                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Report has been sent successfully"),));
                  Navigator.pushNamed(context,'play');
                },
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nudity or sexual activity",style: TextStyle(fontSize: 15.sp),),

                  ],
                ),
              ),

              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Report has been sent successfully"),));
                  Navigator.pushNamed(context,'play');
                },
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hate speech or symbols",style: TextStyle(fontSize: 15.sp),),

                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),

//

            ],
          ),
        ),
      );
        });
  }

  Future<bool> dialog() async {
    home_providerf!.playpause();
    _controller.pause();
    back();
    return await false;
  }

  void back() {
    Navigator.pushReplacementNamed(context, 'bottom');
  }
}
