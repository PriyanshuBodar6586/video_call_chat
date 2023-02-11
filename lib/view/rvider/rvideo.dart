
import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:video_call_chat/model/video_model.dart';
import 'package:video_player/video_player.dart';

import '../../provider/home_provider.dart';



class Rvideo extends StatefulWidget {
  String video;
  Rvideo( this.video);


  @override
  State<Rvideo> createState() => _RvideoState();
}

class _RvideoState extends State<Rvideo> {
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  // VideoPlayerController? videoPlayerController;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset("${Provider.of<Home_Provider>(context,listen: true).i2}")
    _controller = VideoPlayerController.asset("${widget.video}")
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
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return WillPopScope(
      onWillPop:dialog,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Builder(builder: (context){
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
            return  Stack(
              alignment: Alignment.bottomRight,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*1,
                      width: MediaQuery.of(context).size.width*0.99,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: _controller.value.isInitialized
                              ?
                          AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller))
                              :
                          Center(child: const CircularProgressIndicator(color: Colors.green,))
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    ElevatedButton(onPressed: (){
                      dialog();

                    }, child: Text("close"),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),),
                    ElevatedButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, 'lotti');
                    }, child: Text("Next"),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),),
                    ElevatedButton(onPressed: (){

                          chat();
                          Navigator.pushReplacementNamed(context, 'chat',arguments:  home_providerf!.i2[0].Name);

                    },
                      child: Icon(Icons.sms),style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.27,
                        width: MediaQuery.of(context).size.width*0.35,
                        child: SmartFaceCamera(
                          //  autoCapture: true,
                          defaultCameraLens: CameraLens.front,
                          onCapture: (File? image) {
                            _capturedImage = image;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            );
          }),


        ),
      ),
    );
  }
  Future<bool> dialog() async {
    home_providerf!.playpause();
    _controller.pause();
    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacementNamed(context, 'bottom');
  }
  Future<bool> chat()async{
    home_providerf!.playpause();
    _controller.pause();
    return await false;
  }
}