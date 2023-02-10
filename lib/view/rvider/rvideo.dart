import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'package:video_player/video_player.dart';

import '../../provider/home_provider.dart';



class Rvideo extends StatefulWidget {
  const Rvideo({Key? key}) : super(key: key);

  @override
  State<Rvideo> createState() => _RvideoState();
}

class _RvideoState extends State<Rvideo> {


late  VideoPlayerController videoPlayerController;
@override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset("${Provider.of<Home_Provider>(context,listen: false).Datapickkk!.video}")
    ..initialize().then((value) {
      setState(() {
        videoPlayerController.setLooping(true);
        videoPlayerController.play();
      });
    });
  }
File? _capturedImage;
Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
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
                  Align(alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, 'bottom');
                        }, child: Text("Exit")),
                        SizedBox(width: 10,),
                        ElevatedButton(onPressed: (){
                          home_providerf!.updateDataInList();
                          Navigator.pushNamed(context, 'lotti');
                        }, child: Text("Next")),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*1,
                        width: MediaQuery.of(context).size.width*0.99,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: videoPlayerController.value.isInitialized
                                ?
                            AspectRatio(
                                aspectRatio: videoPlayerController.value.aspectRatio,
                                child: VideoPlayer(videoPlayerController))
                                :
                            Center(child: const CircularProgressIndicator(color: Colors.green,))
                        ),
                      ),
                    ],

                  ),

                  ClipRRect(borderRadius: BorderRadius.circular(10),
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
              );
            }),
          )
      ),
    );
  }
Future<bool> dialog() async {
  home_providerf!.playpause();
  videoPlayerController.pause();
  back();
  return await false;
}
void back(){
  Navigator.pushReplacementNamed(context, 'bottom');
  }
}
