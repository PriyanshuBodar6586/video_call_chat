import 'dart:async';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

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
  bool isloading=false;
  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return WillPopScope( onWillPop: dialog,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              leading: IconButton(icon:Icon(Icons.arrow_back_ios),onPressed: (){
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
            body: DashChat(
              currentUser: userr,
              onSend: (ChatMessage m) {
                setState(() {
                  interVideoAds();
                  setState(() {
                    isloading = true;
                  });
                  Timer(Duration(seconds: 7), () {
                    setState(() {
                      isloading = false ;
                    });
                    messages.insert(0, m);
                  });



                });
              },
              messages: messages,
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