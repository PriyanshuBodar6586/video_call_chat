import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


import '../../model/video_model.dart';
import '../../provider/home_provider.dart';

class Video_Screen extends StatefulWidget {
  const Video_Screen({Key? key}) : super(key: key);

  @override
  State<Video_Screen> createState() => _Video_ScreenState();
}

class _Video_ScreenState extends State<Video_Screen> {

  Home_Provider? home_providerf;
  Home_Provider? home_providert;
  @override
  Widget build(BuildContext context) {
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Popular",style: TextStyle(color: Colors.pink,fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        body: GridView.builder(
          itemCount: home_providerf!.i1.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 32.h),
          itemBuilder: (contest,index){
            return Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: (){
                  home_providerf!.Datapickkk = Modeldata  (
                    Name: home_providerf!.i1[index].Name,
                    Image: home_providerf!.i1[index].Image,
                    video: home_providerf!.i1[index].video,
                  );
                  Navigator.pushNamed(context, 'play');
                },
                child: Column(
                  children: [
                    Container(
                      height:30.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                      ),

                      child: Stack(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(10),
                            child: Image.asset("${home_providerf!.i1[index].Image}",
                              fit: BoxFit.fill,
                              height:35.h,
                              width: 48.w,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.sp),
                                child: Stack(
                                  children: [
                                    Opacity(
                                      opacity: 0.4,
                                      child: Container(
                                        height: 4.5.h,
                                        width: 21.w,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(7.0.sp),
                                          child: Container(
                                            height: 2.h,
                                            width: 2.h,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.greenAccent.shade700
                                            ),
                                          ),
                                        ),
                                        Text("Live",style: TextStyle(color: Colors.white,fontSize: 15),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.symmetric(horizontal:5.0.sp),
                                            child: Text("${home_providerf!.i1[index].Name}",
                                              style: TextStyle(color: Colors.white,fontSize: 18),),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.all(2.0.sp),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            SizedBox(width: 1.h,),
                                            Container(
                                              height: 3.5.h,
                                              width: 8.h,
                                              decoration: BoxDecoration(
                                                color: Colors.pink.shade400,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Center(child: Text("⭐Lv5",style: TextStyle(color:Colors.white),)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: EdgeInsets.all(3.sp),
                                    child: LikeButton(
                                      size: 30,
                                      circleColor: CircleColor(
                                          start: Colors.pinkAccent,
                                          end: Colors.redAccent),
                                      bubblesColor: BubblesColor(
                                        dotPrimaryColor: Color(0xff33b5e5),
                                        dotSecondaryColor: Color(0xff0099cc),
                                      ),
                                      likeBuilder: (bool isLiked) {
                                        isLiked? home_providerf!.cart.add(home_providerf!.Datapickkk!):"";
                                      //  isLiked ? apiproviderF!.cart.add(apimodel.articles![index]):"";
                                        return Icon(
                                          isLiked
                                              ? Icons.favorite
                                              : Icons.favorite_border,
                                          color: isLiked
                                              ? Colors.red
                                              : Colors.white54,
                                          size: 30,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

      ),
    );
  }
}
