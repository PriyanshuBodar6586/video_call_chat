import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../model/ads_screen.dart';
import '../../../provider/home_provider.dart';

class First_question extends StatefulWidget {
  const First_question({Key? key}) : super(key: key);

  @override
  State<First_question> createState() => _First_questionState();
}

class _First_questionState extends State<First_question> {

  Home_Provider? home_providerT;
  Home_Provider? home_providerF;
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
  }

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    home_providerF = Provider.of<Home_Provider>(context, listen: false);
    home_providerT = Provider.of<Home_Provider>(context, listen: true);
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "assets/image/bacl0012.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [

              isAdLoaded?
              Container(
                height: 30.h,
                alignment: Alignment.center,
                child: AdWidget(ad: nativead!),
              ) :
              Container(
                height: 30.h,
                alignment: Alignment.center,
                child: Center(child: const CircularProgressIndicator()),
              ),
              Text(
                "What Is Your Gender ?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height:4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
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
                            Navigator.pushNamed(context, 'mage');
                          });
                        },
                        child: Container(
                          height: 27.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 2,
                                color: Colors.white,
                              )),
                          child: Lottie.asset(
                              "assets/video/90960-male-06.json",
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(height: 20),
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
                              Navigator.pushNamed(context, 'mage');
                            });
                          },
                          child: Container(
                            height: 7.h,
                            width: 37.w,
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
                              child: Text("Male",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4E08DC),
                                    fontSize: 25,
                                  )),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          interVideoAds();
                          setState(() {
                            isloading = true;
                          });
                          Timer(Duration(seconds: 7), () {
                            setState(() {
                              isloading = false ;
                            });
                            Navigator.pushNamed(context, 'feage');
                          });
                        },
                        child: Container(
                          height: 27.h,
                          width: 45.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: Lottie.asset(
                              "assets/video/42722-female-avatar.json"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () {
                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context, 'feage');
                            });

                          },
                          child: Container(
                            height: 7.h,
                            width: 37.w,
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
                              child: Text("Female",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4E08DC),
                                    fontSize: 25,
                                  )),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),

            ],
          ),
          isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container(),
          SizedBox(height: 100,
            child: AdWidget(ad: bannerAd!,),),

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
