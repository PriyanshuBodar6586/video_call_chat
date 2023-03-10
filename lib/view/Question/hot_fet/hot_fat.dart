import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../model/ads_screen.dart';
import '../male_female/first.dart';

class Hot_Fat extends StatefulWidget {
  const Hot_Fat({Key? key}) : super(key: key);

  @override
  State<Hot_Fat> createState() => _Hot_FatState();
}

class _Hot_FatState extends State<Hot_Fat> {
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Column(

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

                          Container(
                            height: 8.h,
                            width: 85.w,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20, color: Colors.deepPurpleAccent)
                              ],
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Which Type Video You Went To See ?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4E08DC),
                                      fontSize: 14.sp,
                                    ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),

                          InkWell(onTap:(){
                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'fq');
                            });


                          },
                            child: Container(
                              height: 7.h,
                              width: 67.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Stylish girl video",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4E08DC),
                                      fontSize: 15.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(onTap: (){
                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'fq');
                            });


                          },
                            child: Container(
                              height: 7.h,
                              width: 67.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Popular girl video",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4E08DC),
                                      fontSize: 15.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(onTap: (){
                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'fq');
                            });

                          },
                            child:Container(
                              height: 7.h,
                              width: 67.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Modern girl video",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4E08DC),
                                      fontSize:15.sp,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          InkWell(onTap: (){
                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'fq');
                            });

                          },
                            child:Container(
                              height: 7.h,
                              width: 67.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Desi girl video ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4E08DC),
                                      fontSize:15.sp,
                                    )),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),

              ],
            ),
          ),
          isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container()

        ],
      ),
    );
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
