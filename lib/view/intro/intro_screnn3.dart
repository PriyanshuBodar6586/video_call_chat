import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_call_chat/model/ads_screen.dart';

class Intro3 extends StatefulWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  State<Intro3> createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset("assets/image/LOC.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(onTap: (){
                        interVideoAds();
                          setState(() {
                            isloading = true;
                          });
                          Timer(Duration(seconds: 7), () {
                            setState(() {
                             isloading = false ;
                            });
                            Navigator.pushNamed(context,'/start');
                          });

                      },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20,)),
                            ),
                          ),
                        ),
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
}
