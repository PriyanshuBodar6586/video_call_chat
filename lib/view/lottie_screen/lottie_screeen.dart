
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:video_call_chat/provider/home_provider.dart';
import '../rvider/rvideo.dart';

class Lottie_Screen extends StatefulWidget {
  const Lottie_Screen({Key? key}) : super(key: key);

  @override
  State<Lottie_Screen> createState() => _Lottie_ScreenState();
}


class _Lottie_ScreenState extends State<Lottie_Screen> {
  int? randomNumber;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Random random = new Random();
    randomNumber = random.nextInt(Provider.of<Home_Provider>(context,listen: false).i2.length);
  }
  @override
  Widget build(BuildContext context) {
  Future.delayed(Duration(seconds: 05), () {
    
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return Rvideo(Provider.of<Home_Provider>(context,listen: false).i2[randomNumber!].video!);
    },));
  });
    return WillPopScope(onWillPop: dialog,
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Container(


            child:  Lottie.asset("assets/video/84691-whaiting.json"),




          ),
        ),
      ),
    );
  }
  Future<bool> dialog() async {

    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacementNamed(context, 'bottom');
  }
}