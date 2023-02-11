import 'dart:math';

import 'package:flutter/material.dart';

import '../model/video_model.dart';

class Home_Provider extends ChangeNotifier{
  final _random = new Random();
  bool isplay = false ;
  int con =0;

  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }

  void image(int i)
  {
    con = i;
    notifyListeners();
  }

  void playpause()
  {
    isplay=!isplay;
    notifyListeners();
  }

  var date =DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2){
    t1 = set_2;
    notifyListeners();
  }

  List<Modeldata>cart = [];







  List<Modeldata>i1 = [
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-07 at 21.30.51.mp4",Image: "assets/image/8an9xwf43m4z1e1450cg41bffn2sh1p8.jpg",Name:"misty"),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-09 at 09.00.21.mp4",Image: "assets/image/57g2xvv02tj55setg96fk6rzbg1q2b1h.jpg",Name: "sTella"),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-09 at 16.50.29.mp4",Image: "assets/image/6493__user-1659503800.jpg", Name: "Riya 6635"),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/GcMA3gIlhkhj8w8g47yw8zWVgJC18YwU4Ai_eWoWmjgftIpCg8Dx2hCMnLGQ1MdOYw.jpg",  Name: "Fly"),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-07 at 21.30.51.mp4",Image: "assets/image/images.jpg",Name: "Sonia"),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-09 at 09.00.21.mp4",Image: "assets/image/images (1).jpg",Name: "vanshu"),
    Modeldata(video:"assets/video/WhatsApp Video 2023-02-09 at 16.50.29.mp4",Image: "assets/image/images (2).jpg" ,Name:"isshhhh"),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/mumbai-friendship-friends-tarqcubbn4ids4uy3vcc31sxpjntetc2.jpg",Name: "angel7303"),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/sonipat-call-girls-hyderabad-call-girls-ebg2m3orn3ba1sajgl8ae1lgheewblni.jpg",Name: "Rossy rose"),
  ];

  List data2 = [];
  Modeldata?Datapickkk;


  List<Modeldata>i2 = [
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),
    Modeldata(video:"assets/video/video1.mp4",Image: "assets/image/3a08310162e457cf99f93cb930c560b2.jpg",Name:"hoy neha",),

  ];


  List data3 = [];
  Modeldata?Datapikkk;

  void updateDataInList() {
    data3 = new List.generate(10, (_) => i2[_random.nextInt(i2.length)]);
  }

  void showAllData(){
    data3 = i2;
  }
}

