import 'dart:async';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../const/const.dart';
import '../../model/ads_screen.dart';
import '../../provider/home_provider.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  ChatUser userr = ChatUser(
    id: '1',
    firstName: 'Charles',
    lastName: 'Leclerc',
  );

  List<ChatMessage> messages = <ChatMessage>[
    ChatMessage(
      text: 'Hey!   ',
      user: ChatUser(id: 'userr'),
      createdAt: DateTime.now(),
    ),
  ];
  bool isloading = false;
  NativeAd? nativead;
  bool isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    fornative();
  }

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
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.deepPurple, Colors.purpleAccent]),
                ),
              ),
              title: Row(
                children: [
                  //SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Text("Riya"),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  DashChat(
                    currentUser: userr,
                    onSend: (ChatMessage m) {
                      setState(() {
                        messages.insert(0, m);
                      });
                    },
                    messages: messages,
                  ),

                  isAdLoaded
                      ? Container(
                          height: 40.h,
                          alignment: Alignment.center,
                          child: AdWidget(ad: nativead!),
                        )
                      : Container(
                          height: 40.h,
                          alignment: Alignment.center,
                          child: Center(child: const CircularProgressIndicator()),
                        ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          isloading
              ? Center(
                  child: Lottie.asset("assets/video/136926-loading-123.json"),
                )
              : Container()
        ],
      ),
    );
  }

  Future<bool> dialog() async {
    return await false;
  }

  void fornative() {
    try {
      nativead = NativeAd(
        adUnitId: '$na',
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(onAdLoaded: (_) {
          setState(() {
            isAdLoaded = true;
          });
        }, onAdFailedToLoad: (ad, error) {
          fornative();
        }),
      );
      nativead!.load();
    } on Exception {}
  }
}
