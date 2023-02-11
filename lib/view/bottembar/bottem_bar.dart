



import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_chat/view/home/like_Screen.dart';

import '../../provider/home_provider.dart';
import '../Question/done/done.dart';
import '../home/video_screen.dart';
import '../match/match_screen.dart';
import '../profile/profile.dart';
import '../rvider/rvideo.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {

  List WidgetsList=[Match_screen(),Video_Screen(),Like_Screen(),Done(),uprofile(),];

  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor:  Color(0xFFFFFFFF),
          onTabChange: (value){
            Provider.of<Home_Provider>(context,listen:false).changeicon(value);
          },
          selectedIndex: Provider.of<Home_Provider>(context,listen:true).i ,
          rippleColor: Color(0xFF6A21E2), // tab button ripple color when pressed
          hoverColor:  Color(0xFF6A21E2), // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 10,
          tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          //tabBorder: Border.all(color:  Color(0xFF6A21E2),), // tab button border
         // tabShadow: [BoxShadow(color: Color(0xFF6A21E2), blurRadius: 20)], // tab button shadow
          curve: Curves.linear, // tab animation curves
          duration: Duration(seconds: 1), // tab animation duration
          gap: 5, // the tab button gap between icon and text
          color: Colors.grey, // unselected icon color
          activeColor: Color(0xFF6A21E2), // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.white, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2.h), // navigation bar padding
          tabs: [
            GButton(
              icon:Icons.wc_outlined,
              text: 'Meet',
            ),
            GButton(
              icon: Icons.live_tv,
              text: 'Live',
            ),
            GButton(
              icon:Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.mark_unread_chat_alt_sharp,
              text: 'Messeges',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ]
      ),
      body:  WidgetsList[Provider.of<Home_Provider>(context,listen: true).i],
      );

  }

}

