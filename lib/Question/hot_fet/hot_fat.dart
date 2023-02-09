import 'package:flutter/material.dart';

import '../male_female/first.dart';

class Hot_Fat extends StatefulWidget {
  const Hot_Fat({Key? key}) : super(key: key);

  @override
  State<Hot_Fat> createState() => _Hot_FatState();
}

class _Hot_FatState extends State<Hot_Fat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset("assets/image/back.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Column(
                    children: [
                      InkWell(onTap:(){
                        Navigator.pushNamed(context,'fq');
                      },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Hot",style: TextStyle(color: Colors.white,fontSize: 27,),),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(onTap: (){
                        Navigator.pushNamed(context,'fq');
                      },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Cute",style: TextStyle(color: Colors.white,fontSize: 27,)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(onTap: (){
                        Navigator.pushNamed(context,'fq');
                      },
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Fat",style: TextStyle(color: Colors.white,fontSize: 27,)),
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
