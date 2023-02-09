import 'package:flutter/material.dart';


import 'intro_screen2.dart';

class intro1 extends StatefulWidget {
  const intro1({Key? key}) : super(key: key);

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Image.asset("assets/image/heart.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(onTap: (){

                  },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 17),
                      child: InkWell(onTap: (){

                          Navigator.pushNamed(context,'intro02');

                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20,)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
