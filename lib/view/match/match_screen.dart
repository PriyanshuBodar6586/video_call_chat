import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../model/video_model.dart';
import '../../provider/home_provider.dart';
import '../rvider/rvideo.dart';

class Match_screen extends StatefulWidget {
  const Match_screen({Key? key}) : super(key: key);

  @override
  State<Match_screen> createState() => _Match_screenState();
}

class _Match_screenState extends State<Match_screen> {
  @override
  void initState() {
    super.initState();
  }

  Home_Provider? home_providert;
  Home_Provider? home_providerf;

  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context, listen: true);
    home_providerf = Provider.of<Home_Provider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff6A21E2),
        centerTitle: true,
        title: Text("Near By"),
        leading: Text(".", style: TextStyle(fontSize: 0.1)),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/image/bacl0012.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      home_providerf!.Datapickkk = Modeldata();
                      Navigator.pushNamed(context, "lotti");
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20, color: Colors.deepPurpleAccent)
                        ],
                      ),
                      child: Center(
                        child: Text("Tap To Call",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4E08DC),
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
