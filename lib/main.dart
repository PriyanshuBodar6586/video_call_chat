import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/view/home/video_screen.dart';

import 'provider/home_provider.dart';
import 'view/bottembar/bottem_bar.dart';
import 'view/home/home_screen.dart';
import 'view/home/video_play_screen.dart';
import 'view/intero screen/intero.dart';
import 'view/question/birthday_screen.dart';
import 'view/question/image_screen.dart';
import 'view/question/nickname.dart';
import 'view/question/sele_gender.dart';
import 'view/question/your_goal.dart';
import 'view/splash screen/splash_screen.dart';

void main(){

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
            // initialRoute: 'bottom',
            routes: {
              //'d':(conest)=>VideoApp(),
              '/':(contest)=>splash_screen(),
              'intro':(contest)=>intro_Screen(),
              'home':(contest)=>Home_Screen(),
              'gender':(contest)=>selecte_gender(),
              'birth':(contest)=>User_Birthday(),
              'nick':(contest)=>Nickname_Screen(),
              'avatar':(contest)=>Image_Screen(),
              'your':(contest)=>your_Screen(),
              'bottom':(contest)=>Bottom_Screen(),
              'video':(contest)=>Video_Screen(),
              'play':(contest)=>Second_Screen(),
            },
          );
        },
      ),
    ),
  );
}
