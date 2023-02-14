import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../model/ads_screen.dart';
import '../../../provider/home_provider.dart';

class User_Birthday extends StatefulWidget {
  const User_Birthday({Key? key}) : super(key: key);

  @override
  State<User_Birthday> createState() => _User_BirthdayState();
}

class _User_BirthdayState extends State<User_Birthday> {
  bool isloading=false;
  double ? height;
  double ? width;
  Home_Provider? home_providerT;
  Home_Provider? home_providerF;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    home_providerF = Provider.of<Home_Provider>(context,listen: false);
    home_providerT = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(
              children: [

                SizedBox(height: height!*0.15,),

                Text("My Birthday",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: height!*0.05,),

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
                      timeDialog();

                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
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
                          child: Text("${Provider.of<Home_Provider>(context, listen: true).date.day}/${Provider.of<Home_Provider>(context, listen: true).date.month}/${Provider.of<Home_Provider>(context, listen: true).date.year}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4E08DC),
                                fontSize: 25,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: height!*0.3,),
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
                              Navigator.pushNamed(context,'loc-global');

                            });



                          },
                          child:Container(
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
                              child: Text("Confirm",
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
                SizedBox(height: height!*0.02,),
                Text("Not allowed to use under 18",style: TextStyle(color: Colors.white,),)
              ],
            ),
            isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container()

          ],
        ),
      ),
    );
  }
  void timeDialog() async {
    var data = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: Colors.purpleAccent, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: Colors.deepPurpleAccent, // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(0),
        lastDate: DateTime(3000));
    Provider.of<Home_Provider>(context, listen: false).getdata(data);
  }
}
