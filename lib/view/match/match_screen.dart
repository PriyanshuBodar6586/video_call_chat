import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/Question/done/done.dart';

import '../../model/video_model.dart';
import '../../provider/home_provider.dart';
import '../rvider/rvideo.dart';

class Match_screen extends StatefulWidget {
  const Match_screen({Key? key}) : super(key: key);

  @override
  State<Match_screen> createState() => _Match_screenState();
}

class _Match_screenState extends State<Match_screen> {
  @override
  void initState() {
    super.initState();
  }

  Home_Provider? home_providert;
  Home_Provider? home_providerf;

  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff6A21E2),
          centerTitle: true,
          title: Text("Near By"),
          leading: Text(".", style: TextStyle(fontSize: 0.1)),
        ),
        body: Stack(
          children: [
            Image.asset(
              "assets/image/bacl0012.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                          height: 29.h,
                          width: 25.w,
                          "assets/image/70317-morelive-like-icon.json"),
                      Lottie.asset(
                          height: 29.h,
                          width: 25.w,
                          "assets/image/70317-morelive-like-icon.json"),
                      Lottie.asset(
                          height: 29.h,
                          width: 25.w,
                          "assets/image/70317-morelive-like-icon.json"),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        home_providerf!.Datapickkk = Modeldata();
                        Navigator.pushNamed(context, "lotti");
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("Tap To Start",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4E08DC),
                                fontSize: 25,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
