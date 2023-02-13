import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../provider/home_provider.dart';

class First_question extends StatefulWidget {
  const First_question({Key? key}) : super(key: key);

  @override
  State<First_question> createState() => _First_questionState();
}

class _First_questionState extends State<First_question> {


  Home_Provider? home_providerT;
  Home_Provider? home_providerF;

  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    home_providerF = Provider.of<Home_Provider>(context,listen: false);
    home_providerT = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/image/bacl0012.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pushNamed(context,'home');
                    }, icon: Icon(Icons.arrow_back,size: 35,color: Colors.white,)),
                  ],
                ),
                SizedBox(height: height!*0.1,),
                Text("What Is Your Gender",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                SizedBox(height: height!*0.09,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                         height: 27.h,
                          width: 45.w,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),border:Border.all(width: 2,color: Colors.white,)),
                          child: Lottie.asset("assets/video/90960-male-06.json",fit: BoxFit.fill),
                        ),
                        SizedBox(height: 20),


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
                              )
                          )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 27.h,
                          width: 45.w,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),border:Border.all(width: 2,color: Colors.white)),
                          child: Lottie.asset("assets/video/42722-female-avatar.json"),),
                          SizedBox(height:20,),

                          InkWell(
                              onTap: (){
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
                              )
                          )



                      ],
                    ),
                  ],
                ),
                SizedBox(height: height!*0.07,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  ],
                ),
                SizedBox(height: height!*0.02,),
                Text("Can't be changed after confirmation",style: TextStyle(color: Colors.white,),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}