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
    Modeldata(video:"assets/video/vg/v0.mp4",Image: "assets/image/ig/i0.jpg",Name:" neha",),
    Modeldata(video:"assets/video/vg/v1.mp4",Image: "assets/image/ig/i1.jpg",Name:" Riya",),
    Modeldata(video:"assets/video/vg/v2.mp4",Image: "assets/image/ig/i2.jpg",Name:" Susmeeta ",),
    Modeldata(video:"assets/video/vg/v3.mp4",Image: "assets/image/ig/i3.jpg",Name:" reema",),
    Modeldata(video:"assets/video/vg/v4.mp4",Image: "assets/image/ig/i4.jpg",Name:" Ragvi",),
    Modeldata(video:"assets/video/vg/v5.mp4",Image: "assets/image/ig/i5.jpg",Name:" krisha",),
    Modeldata(video:"assets/video/vg/v6.mp4",Image: "assets/image/ig/i6.jpg",Name:" rose",),
    Modeldata(video:"assets/video/vg/v7.mp4",Image: "assets/image/ig/i7.jpg",Name:" rehiti",),
    Modeldata(video:"assets/video/vg/v8.mp4",Image: "assets/image/ig/i8.jpg",Name:" rita",),
    Modeldata(video:"assets/video/vg/v9.mp4",Image: "assets/image/ig/i9.jpg",Name:" neha",),
    Modeldata(video:"assets/video/vg/v10.mp4",Image: "assets/image/ig/i10.jpg",Name:"Divine",),
    Modeldata(video:"assets/video/vg/v11.mp4",Image: "assets/image/ig/i11.jpg",Name:"hoy kiran",),
    Modeldata(video:"assets/video/vg/v12.mp4",Image: "assets/image/ig/i12.jpg",Name:"hoy rutta",),
    Modeldata(video:"assets/video/vg/v13.mp4",Image: "assets/image/ig/i13.jpg",Name:"hoy lovely",),
    Modeldata(video:"assets/video/vg/v14.mp4",Image: "assets/image/ig/i14.jpg",Name:"pretty",),
    Modeldata(video:"assets/video/vg/v15.mp4",Image: "assets/image/ig/i15.jpg",Name:"pinal",),
    Modeldata(video:"assets/video/vg/v16.mp4",Image: "assets/image/ig/i16.jpg",Name:"sonal",),
    Modeldata(video:"assets/video/vg/v17.mp4",Image: "assets/image/ig/i17.jpg",Name:"Kajal",),
    Modeldata(video:"assets/video/vg/v18.mp4",Image: "assets/image/ig/i18.jpg",Name:"Maryal",),
    Modeldata(video:"assets/video/vg/v19.mp4",Image: "assets/image/ig/i19.jpg",Name:"Alexis",),
    Modeldata(video:"assets/video/vg/v20.mp4",Image: "assets/image/ig/i20.jpg",Name:"jenifar",),
    Modeldata(video:"assets/video/vg/v21.mp4",Image: "assets/image/ig/i21.jpg",Name:"kristofer",),
    Modeldata(video:"assets/video/vg/v22.mp4",Image: "assets/image/ig/i22.jpg",Name:"sima",),
    Modeldata(video:"assets/video/vg/v23.mp4",Image: "assets/image/ig/i23.jpg",Name:"lizel",),
    Modeldata(video:"assets/video/vg/v24.mp4",Image: "assets/image/ig/i24.jpg",Name:"sofiya",),
    Modeldata(video:"assets/video/vg/v25.mp4",Image: "assets/image/ig/i25.jpg",Name:"Camila",),
    Modeldata(video:"assets/video/vg/v26.mp4",Image: "assets/image/ig/i26.jpg",Name:"Eleanor",),
    Modeldata(video:"assets/video/vg/v27.mp4",Image: "assets/image/ig/i27.jpg",Name:"Nora",),
    Modeldata(video:"assets/video/vg/v28.mp4",Image: "assets/image/ig/i28.jpg",Name:"Hazel",),
    Modeldata(video:"assets/video/vg/v29.mp4",Image: "assets/image/ig/i29.jpg",Name:"Isla",),
    Modeldata(video:"assets/video/vg/v30.mp4",Image: "assets/image/ig/i30.jpg",Name:"ishita",),
    Modeldata(video:"assets/video/vg/v31.mp4",Image: "assets/image/ig/i31.jpg",Name:"Avni",),
    Modeldata(video:"assets/video/vg/v32.mp4",Image: "assets/image/ig/i32.jpg",Name:"Bhavna",),
    Modeldata(video:"assets/video/vg/v33.mp4",Image: "assets/image/ig/i33.jpg",Name:"Amaira",),
    Modeldata(video:"assets/video/vg/v34.mp4",Image: "assets/image/ig/i34.jpg",Name:"Dhriti",),
    Modeldata(video:"assets/video/vg/v35.mp4",Image: "assets/image/ig/i34.jpg",Name:"Diya",),
    Modeldata(video:"assets/video/vg/v36.mp4",Image: "assets/image/ig/i36.jpg",Name:"Damini",),
    Modeldata(video:"assets/video/vg/v37.mp4",Image: "assets/image/ig/i37.jpg",Name:"Ekta",),
    Modeldata(video:"assets/video/vg/v38.mp4",Image: "assets/image/ig/i38.jpg",Name:"Gayathri",),
    Modeldata(video:"assets/video/vg/v39.mp4",Image: "assets/image/ig/i39.jpg",Name:"Hemani",),
    Modeldata(video:"assets/video/vg/v40.mp4",Image: "assets/image/ig/i40.jpg",Name:"Ikshita",),
    Modeldata(video:"assets/video/vg/v41.mp4",Image: "assets/image/ig/i41.jpg",Name:"Olivia",),
    Modeldata(video:"assets/video/vg/v42.mp4",Image: "assets/image/ig/i42.jpg",Name:"Mia",),
    Modeldata(video:"assets/video/vg/v43.mp4",Image: "assets/image/ig/i0.jpg",Name:"Nyra",),
    Modeldata(video:"assets/video/vg/v44.mp4",Image: "assets/image/ig/i44.jpg",Name:"Ella",),
    Modeldata(video:"assets/video/vg/v45.mp4",Image: "assets/image/ig/i45.jpg",Name:"Avery",),
    Modeldata(video:"assets/video/vg/v46.mp4",Image: "assets/image/ig/i46.jpg",Name:"Hazel",),
    Modeldata(video:"assets/video/vg/v47.mp4",Image: "assets/image/ig/i47.jpg",Name:"Eva",),
    Modeldata(video:"assets/video/vg/v48.mp4",Image: "assets/image/ig/i148.jpg",Name:"Clara",),
    Modeldata(video:"assets/video/vg/v49.mp4",Image: "assets/image/ig/i49.jpg",Name:"Lyla",),
    Modeldata(video:"assets/video/vg/v50.mp4",Image: "assets/image/ig/i50.jpg",Name:"Ayla",),

  ];

  List data2 = [];
  Modeldata?Datapickkk;


  List<Modeldata>i2 = [
    Modeldata(video:"assets/video/vg/v0.mp4",Image: "assets/image/ig/i0.jpg",Name:" neha",),
    Modeldata(video:"assets/video/vg/v1.mp4",Image: "assets/image/ig/i1.jpg",Name:" Riya",),
    Modeldata(video:"assets/video/vg/v2.mp4",Image: "assets/image/ig/i2.jpg",Name:" Susmeeta ",),
    Modeldata(video:"assets/video/vg/v3.mp4",Image: "assets/image/ig/i3.jpg",Name:" reema",),
    Modeldata(video:"assets/video/vg/v4.mp4",Image: "assets/image/ig/i4.jpg",Name:" Ragvi",),
    Modeldata(video:"assets/video/vg/v5.mp4",Image: "assets/image/ig/i5.jpg",Name:" krisha",),
    Modeldata(video:"assets/video/vg/v6.mp4",Image: "assets/image/ig/i6.jpg",Name:" rose",),
    Modeldata(video:"assets/video/vg/v7.mp4",Image: "assets/image/ig/i7.jpg",Name:" rehiti",),
    Modeldata(video:"assets/video/vg/v8.mp4",Image: "assets/image/ig/i8.jpg",Name:" rita",),
    Modeldata(video:"assets/video/vg/v9.mp4",Image: "assets/image/ig/i9.jpg",Name:" neha",),
    Modeldata(video:"assets/video/vg/v10.mp4",Image: "assets/image/ig/i10.jpg",Name:"Divine",),
    Modeldata(video:"assets/video/vg/v11.mp4",Image: "assets/image/ig/i11.jpg",Name:"hoy kiran",),
    Modeldata(video:"assets/video/vg/v12.mp4",Image: "assets/image/ig/i12.jpg",Name:"hoy rutta",),
    Modeldata(video:"assets/video/vg/v13.mp4",Image: "assets/image/ig/i13.jpg",Name:"hoy lovely",),
    Modeldata(video:"assets/video/vg/v14.mp4",Image: "assets/image/ig/i14.jpg",Name:"pretty",),
    Modeldata(video:"assets/video/vg/v15.mp4",Image: "assets/image/ig/i15.jpg",Name:"pinal",),
    Modeldata(video:"assets/video/vg/v16.mp4",Image: "assets/image/ig/i16.jpg",Name:"sonal",),
    Modeldata(video:"assets/video/vg/v17.mp4",Image: "assets/image/ig/i17.jpg",Name:"Kajal",),
    Modeldata(video:"assets/video/vg/v18.mp4",Image: "assets/image/ig/i18.jpg",Name:"Maryal",),
    Modeldata(video:"assets/video/vg/v19.mp4",Image: "assets/image/ig/i19.jpg",Name:"Alexis",),
    Modeldata(video:"assets/video/vg/v20.mp4",Image: "assets/image/ig/i20.jpg",Name:"jenifar",),
    Modeldata(video:"assets/video/vg/v21.mp4",Image: "assets/image/ig/i21.jpg",Name:"kristofer",),
    Modeldata(video:"assets/video/vg/v22.mp4",Image: "assets/image/ig/i22.jpg",Name:"sima",),
    Modeldata(video:"assets/video/vg/v23.mp4",Image: "assets/image/ig/i23.jpg",Name:"lizel",),
    Modeldata(video:"assets/video/vg/v24.mp4",Image: "assets/image/ig/i24.jpg",Name:"sofiya",),
    Modeldata(video:"assets/video/vg/v25.mp4",Image: "assets/image/ig/i25.jpg",Name:"Camila",),
    Modeldata(video:"assets/video/vg/v26.mp4",Image: "assets/image/ig/i26.jpg",Name:"Eleanor",),
    Modeldata(video:"assets/video/vg/v27.mp4",Image: "assets/image/ig/i27.jpg",Name:"Nora",),
    Modeldata(video:"assets/video/vg/v28.mp4",Image: "assets/image/ig/i28.jpg",Name:"Hazel",),
    Modeldata(video:"assets/video/vg/v29.mp4",Image: "assets/image/ig/i29.jpg",Name:"Isla",),
    Modeldata(video:"assets/video/vg/v30.mp4",Image: "assets/image/ig/i30.jpg",Name:"ishita",),
    Modeldata(video:"assets/video/vg/v31.mp4",Image: "assets/image/ig/i31.jpg",Name:"Avni",),
    Modeldata(video:"assets/video/vg/v32.mp4",Image: "assets/image/ig/i32.jpg",Name:"Bhavna",),
    Modeldata(video:"assets/video/vg/v33.mp4",Image: "assets/image/ig/i33.jpg",Name:"Amaira",),
    Modeldata(video:"assets/video/vg/v34.mp4",Image: "assets/image/ig/i34.jpg",Name:"Dhriti",),
    Modeldata(video:"assets/video/vg/v35.mp4",Image: "assets/image/ig/i34.jpg",Name:"Diya",),
    Modeldata(video:"assets/video/vg/v36.mp4",Image: "assets/image/ig/i36.jpg",Name:"Damini",),
    Modeldata(video:"assets/video/vg/v37.mp4",Image: "assets/image/ig/i37.jpg",Name:"Ekta",),
    Modeldata(video:"assets/video/vg/v38.mp4",Image: "assets/image/ig/i38.jpg",Name:"Gayathri",),
    Modeldata(video:"assets/video/vg/v39.mp4",Image: "assets/image/ig/i39.jpg",Name:"Hemani",),
    Modeldata(video:"assets/video/vg/v40.mp4",Image: "assets/image/ig/i40.jpg",Name:"Ikshita",),
    Modeldata(video:"assets/video/vg/v41.mp4",Image: "assets/image/ig/i41.jpg",Name:"Olivia",),
    Modeldata(video:"assets/video/vg/v42.mp4",Image: "assets/image/ig/i42.jpg",Name:"Mia",),
    Modeldata(video:"assets/video/vg/v43.mp4",Image: "assets/image/ig/i0.jpg",Name:"Nyra",),
    Modeldata(video:"assets/video/vg/v44.mp4",Image: "assets/image/ig/i44.jpg",Name:"Ella",),
    Modeldata(video:"assets/video/vg/v45.mp4",Image: "assets/image/ig/i45.jpg",Name:"Avery",),
    Modeldata(video:"assets/video/vg/v46.mp4",Image: "assets/image/ig/i46.jpg",Name:"Hazel",),
    Modeldata(video:"assets/video/vg/v47.mp4",Image: "assets/image/ig/i47.jpg",Name:"Eva",),
    Modeldata(video:"assets/video/vg/v48.mp4",Image: "assets/image/ig/i148.jpg",Name:"Clara",),
    Modeldata(video:"assets/video/vg/v49.mp4",Image: "assets/image/ig/i49.jpg",Name:"Lyla",),
    Modeldata(video:"assets/video/vg/v50.mp4",Image: "assets/image/ig/i50.jpg",Name:"Ayla",),
    Modeldata(video:"assets/video/vg/v3.mp4",Image: "assets/image/ig/i3.jpg",Name:" reema",),



  ];


  List data3 = [];
  Modeldata?Datapikkk;


}

