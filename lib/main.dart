import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/Question/male_female/femaleage/feqage.dart';
import 'package:video_call_chat/Question/starting%20screen/start%20screen.dart';
import 'package:video_call_chat/view/demo/demo.dart';
import 'package:video_call_chat/view/home/video_screen.dart';
import 'Question/done/done.dart';
import 'Question/hot_fet/hot_fat.dart';
import 'Question/loc_glob/loc_glo.dart';
import 'Question/male_female/first.dart';
import 'Question/male_female/maleage/mqage.dart';
import 'intro/intro_screen.dart';
import 'intro/intro_screen2.dart';
import 'intro/intro_screnn3.dart';
import 'provider/home_provider.dart';
import 'view/bottembar/bottem_bar.dart';
import 'view/home/home_screen.dart';
import 'view/home/video_play_screen.dart';


import 'view/lottie_screen/lottie_screeen.dart';
import 'view/rvider/rvideo.dart';
import 'view/splash screen/splash_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized(); //Add this
  await FaceCamera.initialize();
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest)=>Home_Provider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType){
          return   MaterialApp(
            theme: ThemeData(
              accentColor: Colors.black,
            ),
            debugShowCheckedModeBanner: false,
            //initialRoute: 'd',
            routes: {

              '/':(contest)=>splash_screen(),
              '/start':(contest)=>Start_screen(),
              'intro01':(contest)=>intro1(),
              'd':(conest)=>Call_screen(),
              'intro02':(contest)=>Intro2(),
              'intro03':(contest)=>Intro3(),
              'home':(contest)=>Home_Screen(),
              'hotfat':(contest)=>Hot_Fat(),
              'rvideo':(contest)=>Rvideo(),
              'feage':(contest)=>Feqage(),
              'mage':(contest)=>Maqage(),
              'bottom':(contest)=>Bottombar(),
              'video':(contest)=>Video_Screen(),
              'play':(contest)=>Second_Screen(),
              'fq': (contest) => First_Question(),
              'lotti': (contest) => Lottie_Screen(),
              'loc-global': (contest) => Lock_Global(),
              'done': (contest) => Done(),
            },
          );
        },
      ),
    ),
  );
}
