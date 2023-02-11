import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Maqage extends StatefulWidget {
  const Maqage({Key? key}) : super(key: key);

  @override
  State<Maqage> createState() => _MaqageState();
}

class _MaqageState extends State<Maqage> {
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
                 Container(
                  height: 7.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20, color: Colors.deepPurpleAccent)
                    ],
                  ),
                  child: Center(
                    child: Text("Select Your Age Ratio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4E08DC),
                          fontSize: 25,
                        )),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Column(
                    children: [
                      InkWell(onTap: (){
                        Navigator.pushNamed(context,'done');
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
                            child: Text("18  To  20",
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
                        Navigator.pushNamed(context,'done');
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
                            child: Text("21  to  30",
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
                        Navigator.pushNamed(context,'done');
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
                            child: Text("31  To  50",
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
                        Navigator.pushNamed(context,'done');
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
                            child: Text("51  To  up",
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
    );
  }
}
