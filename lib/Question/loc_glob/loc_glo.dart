import 'package:flutter/material.dart';


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
            Image.asset("assets/image/back.png",height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context,'hotfat');
                        },

                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Local",style: TextStyle(color: Colors.white,fontSize: 27,),),
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
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(child: Text("Globel",style: TextStyle(color: Colors.white,fontSize: 27,)),
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
