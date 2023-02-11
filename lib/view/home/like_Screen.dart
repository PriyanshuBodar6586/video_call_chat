import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

class Like_Screen extends StatefulWidget {
  const Like_Screen({Key? key}) : super(key: key);

  @override
  State<Like_Screen> createState() => _Like_ScreenState();
}

class _Like_ScreenState extends State<Like_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (contest,index){
          return ListTile (
           title: Image.asset("${Provider.of<Home_Provider>(context,listen: true).cart[index].Image}"),
          subtitle: Text("${Provider.of<Home_Provider
          >(context,listen: true).cart[index].Name}"),
        );},

      ),
    );
  }
}
