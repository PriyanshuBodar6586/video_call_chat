import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/view/home/like_Screen.dart';
import 'package:video_call_chat/view/intro/intro_screen.dart';
import 'package:video_call_chat/view/privacy_policy/privacy_policy.dart';
import 'provider/home_provider.dart';
import 'view/Question/birthday/birthday_screen.dart';
import 'view/Question/done/done.dart';
import 'view/Question/hot_fet/hot_fat.dart';
import 'view/Question/loc_glob/loc_glo.dart';
import 'view/Question/male_female/femaleage/feqage.dart';
import 'view/Question/male_female/first.dart';
import 'view/Question/male_female/maleage/mqage.dart';
import 'view/Question/nic_name/nick_name.dart';
import 'view/Question/starting screen/start screen.dart';
import 'view/bottembar/bottem_bar.dart';
import 'view/chatscreen/chat_screen.dart';
import 'view/home/home_screen.dart';
import 'view/home/video_play_screen.dart';
import 'view/home/video_screen.dart';
import 'view/intro/intro_screen2.dart';
import 'view/intro/intro_screnn3.dart';
import 'view/lottie_screen/lottie_screeen.dart';
import 'view/profile/profile.dart';
import 'view/splash screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();//Add this
  await FaceCamera.initialize();
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (contest) => Home_Provider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            theme: ThemeData(
              accentColor: Colors.black,
            ),
            debugShowCheckedModeBanner: false,
            //initialRoute: 'bottom',

             //     initialRoute: 'ubirth',

            routes: {
              '/': (contest) => splash_screen(),
              'Privacy': (contest) => Privacy_Policy(),
              '/start': (contest) => Start_screen(),
              'intro01': (contest) => intro1(),
              // 'd':(conest)=>Call_screen(),
              'intro02': (contest) => Intro2(),
              'intro03': (contest) => Intro3(),
              'home': (contest) => Home_Screen(),
              'hotfat': (contest) => Hot_Fat(),
              // 'rvideo':(contest)=>Rvideo(),
              'feage': (contest) => Feqage(),
              'mage': (contest) => Maqage(),
              'bottom': (contest) => Bottombar(),
              'video': (contest) => Video_Screen(),
              'play': (contest) => Second_Screen(),
              'fq': (contest) => First_question(),
              'lotti': (contest) => Lottie_Screen(),
              'loc-global': (contest) => Lock_Global(),
              'done': (contest) => Done(),
              'userpro': (contest) => uprofile(),
              'nick': (contest) => Nickname_Screen(),
              'ubirth': (contest) => User_Birthday(),
              'chat': (contest) => Chat_Screen(),
              'like': (contest) => Like_Screen(),
            },
          );
        },
      ),
    ),
  );
}
