import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../model/ads_screen.dart';
import '../../../model/share_screen.dart';

class Nickname_Screen extends StatefulWidget {
  const Nickname_Screen({Key? key}) : super(key: key);

  @override
  State<Nickname_Screen> createState() => _Nickname_ScreenState();
}

class _Nickname_ScreenState extends State<Nickname_Screen> {
  bool isloading=false;
  NativeAd? nativead;
  bool isAdLoaded = false;
  @override
  void initState() {

    super.initState();
    bannerAds();
    fornative();
  }
  TextEditingController txtnickname = TextEditingController();
  var txtkey = GlobalKey<FormState>();
  double ? height;
  double ? width;
  @override

  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Form(
      key: txtkey,
      child: Scaffold(resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Stack(
              children: [
                Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                Column(
                  children: [
                    SizedBox(
                      height: 6.h,
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


                    Text("My Nickname",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                    SizedBox(height: height!*0.05,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        style:TextStyle(color: Colors.white),
                        validator: (value){
                          return value!.length < 1?'Name must be greater than two characters':null;
                        },
                        controller: txtnickname,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:  BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fillColor: Colors.white12,
                          filled: true,
                          label: Text("Nickname",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    SizedBox(height: height!*0.08,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            InkWell(
                              onTap: (){
                                interVideoAds();
                                setState(() {
                                  isloading = true;
                                });
                                Timer(Duration(seconds: 7), () {
                                  setState(() {
                                    isloading = false ;
                                  });
                                  if(txtkey.currentState!.validate() == true){
                                    String iname = txtnickname.text;
                                    setSHR(iname, true);
                                    Navigator.pushNamed(context, 'ubirth');
                                  }
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
                                        blurRadius: 20, color: Colors.deepPurpleAccent)
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
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 80,
                      child: AdWidget(ad: bannerAd!,),),

                  ],
                ),
              ],


            ),
            isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container()

          ],
        ),
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