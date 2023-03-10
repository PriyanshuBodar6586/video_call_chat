
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

 import 'package:flutter/material.dart';
import 'package:video_call_chat/model/ads_screen.dart';

import '../../model/share_screen.dart';


class uprofile extends StatefulWidget {
  const uprofile({Key? key}) : super(key: key);

  @override
  State<uprofile> createState() => _uprofileState();
}

class _uprofileState extends State<uprofile> {
  bool isloading=false;
  @override
  initState()  {
    super.initState();
    getdata();
  }
  String nikname="";
  @override
  Widget build(BuildContext context){
    return WillPopScope( onWillPop: ()async{
      return false;
    },
      child: Stack(
        children: [
          Scaffold (
            backgroundColor: Color(0xffeae6e6),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xff6A21E2),
              centerTitle: true,
              title: Text("Profile"),
              leading: Text(".", style: TextStyle(fontSize: 0.1)),
            ),
            body: Stack(
              children: [
                Container(
                  height: 40.h,
                  width: 100.w,
                  child: Image.asset(
                    "assets/image/bacl0012.png",
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              height: 90.h,
                              width: 85.w,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Container(
                                height: 22.h,
                                width: 22.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 50,
                                        color: Colors.deepPurpleAccent)
                                  ],
                                  color: Colors.purpleAccent,
                                ),
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      "assets/image/profile.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 30, color: Colors.grey)
                                ],
                              ),
                              child: Center(child: Text('${nikname}',style: TextStyle(fontSize: 2.5.h,fontWeight: FontWeight.w400,color: Colors.black),),),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 30, color: Colors.grey)
                                ],
                              ),
                              child: Center(child: Text("Uid :- 12542ssf54s12s",style: TextStyle(fontSize: 2.5.h,fontWeight: FontWeight.w400),),),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 30, color: Colors.grey)
                                ],
                              ),
                              child: Center(child: Text("Your Level is  =  01",style: TextStyle(fontSize: 2.5.h,fontWeight: FontWeight.w400),),),

                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 8.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 30, color: Colors.grey)
                                ],

                              ),
                              child: Center(child: Text("Tap to Earn",style: TextStyle(fontSize: 2.5.h,fontWeight: FontWeight.w400),),),

                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: (){
                                rewardAds();
                                setState(() {
                                  isloading = true;
                                });
                                Timer(Duration(seconds: 7), () {
                                  setState(() {
                                    isloading = false ;
                                  });
                                  Navigator.pushNamed(context,'bottom');
                                });



                                Navigator.pushReplacementNamed(context, 'intro01');
                              },
                              child: Container(
                                height: 8.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 30, color: Colors.grey)
                                  ],
                                ),
                                child: Center(child: Text("Log Out",style: TextStyle(fontSize: 2.5.h,fontWeight: FontWeight.w600),),),

                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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


  Future<String> getdata() async {
    SHRModel s1=await getSHR();
    setState(() {
      nikname=s1.n1!;
    });
    print("=======================$nikname");
    return nikname;
  }
}
