import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/model/ads_screen.dart';

import '../../provider/home_provider.dart';

class Like_Screen extends StatefulWidget {
  const Like_Screen({Key? key}) : super(key: key);

  @override
  State<Like_Screen> createState() => _Like_ScreenState();
}

class _Like_ScreenState extends State<Like_Screen> {
  bool isloading=false;
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    return WillPopScope(
      onWillPop: dialog,
      child: Stack(
        children: [
          Scaffold(
            body: InkWell(
              onTap: (){
                interVideoAds();
                setState(() {
                  isloading = true;
                });
                Timer(Duration(seconds: 7), () {
                  setState(() {
                    isloading = false ;
                  });
                  Navigator.pushNamed(context, 'lotti');
                });







              },
              child: ListView.builder(
                itemCount:home_providerf!.i1.length ,
                itemBuilder: (contest,index){
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1))
                    ),
                    child: ListTile (
                     leading:CircleAvatar(child: ClipRRect(borderRadius: BorderRadius.circular(80) ,child: Image.asset("${home_providerf!.i1[index].Image}",fit: BoxFit.fill,height: 150,width: 150,))),
                     title:Text("${home_providerf!.i1[index].Name}"),
                     trailing:Icon(Icons.arrow_forward_ios_sharp),
                ),
                  );
                  },

              ),
            ),
          ),
          isloading?Center(child: Lottie.asset("assets/video/136926-loading-123.json"),):Container()
        ],
      ),
    );
  }
  Future<bool> dialog() async {


    return await false;
  }
}
