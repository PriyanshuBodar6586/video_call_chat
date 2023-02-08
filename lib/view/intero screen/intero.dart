import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class intro_Screen extends StatefulWidget {
  const intro_Screen({Key? key}) : super(key: key);

  @override
  State<intro_Screen> createState() => _intro_ScreenState();
}

class _intro_ScreenState extends State<intro_Screen> {
  double ? height;
  double ? width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          body: IntroductionScreen(
            globalBackgroundColor: Colors.pinkAccent.shade100,
            done: Text("START",style: TextStyle(color: Colors.green),),
            showDoneButton: true,
            onDone: (){
              Navigator.pushReplacementNamed(context, 'home');
            },
            next: Icon(Icons.arrow_forward,size: 20,color: Colors.green,),
            showNextButton: true,
            pages: [
              PageViewModel(
                footer: Lottie.asset("assets/video/95225-background.json"),
                title: "Find",
                body: "Find interesting friends nearby" ,
                image: Image.asset("assets/image/intro1 1.jpg",height:height!*0.6,width: width!*0.95,),
              ),
              PageViewModel(
                decoration: PageDecoration(),
               // Image.asset("assets/image/intro1 1.jpg"),
                title: "Chat",
                body: "    Share interesting things \n   With friends",
                image: Image.asset("assets/image/intro2 1.jpg",height:height!*0.6,width: width!*0.95,),
              ),
              PageViewModel(
                footer: Lottie.asset("assets/video/532-kiss.json"),
                title: "Video",
                body: "  Post your Popular videos.",
                image: Image.asset("assets/image/intro3 1.jpg",height:height!*0.6,width: width!*0.95,),
              ),

            ],
          ),
        )
    );
  }
}