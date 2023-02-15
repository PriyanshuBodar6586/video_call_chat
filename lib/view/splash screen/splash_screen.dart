import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../const/const.dart';
import '../../model/admodel.dart';
import '../../model/ads_screen.dart';
import '../../model/share_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAdid();
    isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Lottie.asset("assets/video/32489-libero-logo-animation.json",fit: BoxFit.fill),
        ),
      ),
    );
  }

  void isLogin()async{
    SHRModel s1 = await getSHR();
    if(s1.login == true){
      Timer(Duration(seconds: 7),
              ()=>Navigator.pushReplacementNamed(context,'done')
      );}
    else{
      Timer(Duration(seconds: 7),

              ()=>Navigator.pushReplacementNamed(context, 'Privacy')

              ()=>Navigator.pushReplacementNamed(context, '/start')

      );
    }
  }
  getAdid()async{
    Map<String, String> requestHeaders = {
      'Host': '<calculated when request is sent>',
      'User-Agent': 'PostmanRuntime/7.30.0',
      'Accept': '*/*',
      'Accept-Encoding': 'gzip, deflate, br',
      'Connection': 'keep-alive',
      'authorization': 'admin',
    };
    String newslike = "http://3.108.31.187:8080/get-appkey/6";
    var newsString = await http.get(Uri.parse(newslike),headers:requestHeaders);

    print(newsString);
    newsjson = adModelFromJson(newsString.body);

    print('-----data----->${newsjson?.data[0].keyId}');
    openAds();
  }
}