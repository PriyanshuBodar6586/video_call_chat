import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../male_female/first.dart';

class Hot_Fat extends StatefulWidget {
  const Hot_Fat({Key? key}) : super(key: key);

  @override
  State<Hot_Fat> createState() => _Hot_FatState();
}

class _Hot_FatState extends State<Hot_Fat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Column(

                    children: [
                      Container(
                        height: 7.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20, color: Colors.deepPurpleAccent)
                          ],
                        ),
                        child: Center(
                          child: Text("What Do You Like",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4E08DC),
                                fontSize: 25,
                              ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),

                      InkWell(onTap:(){
                        Navigator.pushNamed(context,'fq');
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
                            child: Text("Hot  Giral",
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
                        Navigator.pushNamed(context,'fq');
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
                            child: Text("Cute  Giral",
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
                        Navigator.pushNamed(context,'fq');
                      },
                        child:Container(
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
                            child: Text("Fat  Giral",
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
                        Navigator.pushNamed(context,'fq');
                      },
                        child:Container(
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
                            child: Text("slim  Giral",
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
                ),
                SizedBox(height: 60,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
