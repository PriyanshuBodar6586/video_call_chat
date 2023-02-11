import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../intro/intro_screen.dart';

class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop:dialog,
      child: Scaffold(
        body: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 7.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20, color: Colors.deepPurpleAccent)
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
                  InkWell(onTap: (){
                    Navigator.pushNamed(context,'bottom');
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
        ),
      ),
    );;
  }
  Future<bool> dialog() async {

    back();
    return await false;
  }

  void back(){
    Navigator.pushReplacementNamed(context, 'bottom');
  }
}
