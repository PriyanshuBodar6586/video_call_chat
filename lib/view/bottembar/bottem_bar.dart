



import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../Question/done/done.dart';
import '../../provider/home_provider.dart';
import '../home/video_screen.dart';
import '../match/match_screen.dart';
import '../rvider/rvideo.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  List WidgetsList=[Match_screen(),Video_Screen(),Done(),Done(),];
  Home_Provider ? home_providert;
  Home_Provider ? home_providerf;
  @override
  Widget build(BuildContext context) {
    home_providert = Provider.of<Home_Provider>(context,listen: true);
    home_providerf = Provider.of<Home_Provider>(context,listen: false);
    return Scaffold(
      bottomNavigationBar: GNav(
          onTabChange: (value){
            Provider.of<Home_Provider>(context,listen:false).changeicon(value);
          },
          selectedIndex: Provider.of<Home_Provider>(context,listen:true).i ,
          rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
          hoverColor: Colors.grey.shade700, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 10,
          tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
          tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
          tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.7), blurRadius: 10)], // tab button shadow
          curve: Curves.linear, // tab animation curves
          duration: Duration(seconds: 1), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.black, // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor: Colors.black, // selected tab background color
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7.5), // navigation bar padding
          tabs: [
            GButton(
              icon:Icons.wc_outlined,
              text: 'Meet',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Likes',
            ),
            GButton(
              icon:Icons.mark_unread_chat_alt_sharp,
              text: 'SMS',
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

