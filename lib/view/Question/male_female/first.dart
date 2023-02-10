import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'femaleage/feqage.dart';
import 'maleage/mqage.dart';


class First_Question extends StatefulWidget {
  const First_Question({Key? key}) : super(key: key);

  @override
  State<First_Question> createState() => _First_QuestionState();
}

class _First_QuestionState extends State<First_Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "assets/image/bacl0012.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context,'mage');
                      },
                      child: Container(
                        height: 7.h,
                        width: 37.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20, color: Colors.deepPurpleAccent)
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
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    InkWell(onTap: (){
                      Navigator.pushNamed(context,'feage');
                    },
                      child: Container(
                        height: 7.h,
                        width: 37.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20, color: Colors.deepPurpleAccent)
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
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
