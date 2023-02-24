import 'package:shared_preferences/shared_preferences.dart';

void setSHR(String Name )async{
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setString("name", Name);
  // shr.setBool("login", login);
}

Future<SHRModel> getSHR()async{
  SharedPreferences shr = await SharedPreferences.getInstance();
  String email = shr.get("name").toString();
  // bool? login= shr.getBool("login") as bool?;

  SHRModel s1 =  SHRModel(n1:email);
  return s1;
}

// void setIntro()async{
//   SharedPreferences s1 = await SharedPreferences.getInstance();
//   s1.setBool("show", true);
// }

// Future<bool?>getIntro()async{
//   SharedPreferences s1 =await SharedPreferences.getInstance();
//   return s1.getBool("show") as bool?;
// }

class SHRModel{
  String? n1;
  // bool? login;

  SHRModel({this.n1});
}