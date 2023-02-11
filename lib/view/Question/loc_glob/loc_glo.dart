import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';


class Lock_Global extends StatefulWidget {
  const Lock_Global({Key? key}) : super(key: key);

  @override
  State<Lock_Global> createState() => _Lock_GlobalState();
}

class _Lock_GlobalState extends State<Lock_Global> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
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
                          Navigator.pushNamed(context,'hotfat');
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

                        Navigator.pushNamed(context,'hotfat');
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
    );
  }
}
