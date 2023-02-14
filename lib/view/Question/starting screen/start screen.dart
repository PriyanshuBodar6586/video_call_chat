import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../model/ads_screen.dart';


class Start_screen extends StatefulWidget {
  const Start_screen({Key? key}) : super(key: key);

  @override
  State<Start_screen> createState() => _Start_screenState();
}

class _Start_screenState extends State<Start_screen> {
  bool isloading=false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop:dialog,
      child: Scaffold(

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
                        child: InkWell(onTap: (){
                          interVideoAds();
                          setState(() {
                            isloading = true;
                          });
                          Timer(Duration(seconds: 7), () {
                            setState(() {
                              isloading = false ;
                            });
                            Navigator.pushNamed(context,'nick');
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
                              child: Text("Get Start",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4E08DC),
                                    fontSize: 25,
                                  )),
                            ),
                          ),
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
