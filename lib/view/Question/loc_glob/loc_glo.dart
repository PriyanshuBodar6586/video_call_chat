import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../model/ads_screen.dart';


class Lock_Global extends StatefulWidget {
  const Lock_Global({Key? key}) : super(key: key);

  @override
  State<Lock_Global> createState() => _Lock_GlobalState();
}

class _Lock_GlobalState extends State<Lock_Global> {
  bool isloading=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Lottie.asset("assets/video/45756-earth-globe-looped-icon.json"),
                    Align(
                      alignment: Alignment.bottomCenter,

                      child: Column(
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
                                Navigator.pushNamed(context,'hotfat');
                              });


                            },

                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Local",
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
                          InkWell(onTap: (){

                            interVideoAds();
                            setState(() {
                              isloading = true;
                            });
                            Timer(Duration(seconds: 7), () {
                              setState(() {
                                isloading = false ;
                              });
                              Navigator.pushNamed(context,'hotfat');
                            });




                          },
                            child: Container(
                              height: 7.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20, color: Colors.deepPurpleAccent)
                                ],
                              ),
                              child: Center(
                                child: Text("Global",
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


                        ],
                      ),
                    ),
                    SizedBox(height: 60,),
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
}
