import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/const/const.dart';
import '../../model/ads_screen.dart';
import '../../model/video_model.dart';
import '../../provider/home_provider.dart';

class Match_screen extends StatefulWidget {
  const Match_screen({Key? key}) : super(key: key);

  @override
  State<Match_screen> createState() => _Match_screenState();
}

class _Match_screenState extends State<Match_screen> {
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
  }

  Home_Provider? home_providert;
  Home_Provider? home_providerf;

  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    return WillPopScope(
      onWillPop: dialog,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xff6A21E2),
              centerTitle: true,
              leading: Text(".", style: TextStyle(fontSize: 0.1)),
            ),
            body: Stack(alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/image/bacl0012.png",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
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
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {
                            rewardAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              home_providerf!.Datapickkk = Modeldata(

                              );
                              Navigator.pushNamed(context, "lotti");

                            });




                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.8,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20, color: Colors.deepPurpleAccent)
                              ],
                            ),
                            child: Center(
                              child: Text("Tap To Call",
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

                isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container(),
                SizedBox(height: 10.h,child: AdWidget(ad: bannerAd!),),
              ],
            ),
          ),

        ],
      ),
    );
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
