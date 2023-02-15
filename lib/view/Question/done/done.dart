import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../model/ads_screen.dart';
import '../../../model/share_screen.dart';
import '../../intro/intro_screen.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
    setIntro();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: dialog,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/image/bacl0012.png",
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      isAdLoaded?
                      Container(
                        height: 320,
                        alignment: Alignment.center,
                        child: AdWidget(ad: nativead!),
                      ) :
                      Container(
                        height: 320,
                        alignment: Alignment.center,
                        child: Center(child: const CircularProgressIndicator()),
                      ),
                      Center(
                        child: Container(
                          height: 7.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.deepPurpleAccent)
                            ],
                          ),
                          child: Center(
                            child: Text("WelCome To vide Call App",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4E08DC),
                                  fontSize: 25,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          interVideoAds();
                          setState(() {
                            isloading = true;
                          });
                          Timer(Duration(seconds: 7), () {
                            setState(() {
                              isloading = false;
                            });
                            Navigator.pushNamed(context, 'bottom');
                          });
                        },
                        child: Container(
                          height: 7.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.deepPurpleAccent)
                            ],
                          ),
                          child: Center(
                            child: Text("Done",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4E08DC),
                                  fontSize: 25,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,child: AdWidget(ad: bannerAd!),),
                    ],
                  ),
                ],
              ),
            ),
            isloading
                ? Center(
                    child: Lottie.asset("assets/video/136926-loading-123.json"),
                  )
                : Container()
          ],
        ),
      ),
    );
    ;
  }

  Future<bool> dialog() async {
    return await false;
  }
  void fornative() {
    try
    {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(
            onAdLoaded: (_) {
              setState(() {
                isAdLoaded = true;
              });
            },
            onAdFailedToLoad: (ad, error) {
              fornative();

            }),
      );
      nativead!.load();
    }
    on Exception
    {}

  }
}
