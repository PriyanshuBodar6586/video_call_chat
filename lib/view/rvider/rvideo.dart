import 'package:chewie/chewie.dart';
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
  VideoPlayerController? videoPlayerController;



  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [

                  Container(
                    color: Colors.black,
                    alignment: Alignment.center,
                    height:95.h,
                    child: InkWell(
                      onTap: () {
                        home_providerf!.playpause();
                        if (home_providert!.isplay == true ) {
                          videoPlayerController!.play();
                        } else {
                          videoPlayerController!.pause();
                        }
                      },
                      child: VideoPlayer(videoPlayerController!),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
