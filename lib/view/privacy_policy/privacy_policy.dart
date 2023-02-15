import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({Key? key}) : super(key: key);

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  bool value = false;
  bool valuee = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Privacy Policy"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: SelectableText(""" Accepting the Terms:-
                
                
 By accessing or using our Services, you confirm that you can form a binding contract with Indian video chat, that you accept these Terms and that you agree to comply with them. Your access to and use of our Services is also subject to our Privacy Policy, the terms of which can be found directly on the Platform, or where the Platform is made available for download, on your mobile device’/s applicable app store, and are incorporated herein by reference. By using the Services, you consent to the terms of the Privacy Policy.
 
 User Generated Content :-
 
 Users of the Services may be permitted to upload, post or transmit (such as via a video call) or otherwise make available content through the Services including, without limitation, any text, photographs, user videos, sound recordings and the musical works embodied therein, including videos that incorporate locally stored sound recordings from your personal music library and ambient noise (“User Content”). Indian video chat is a place for your creativity and expression. It’/s also a global community of people looking for a fun, welcoming experience.
 We strongly recommended this App for Adults or Age More Than age > 18. Our Service does not address anyone under the age of 18(Minors) Indian video chat is simply NOT the place to post, share, or promote any of the following, including: 
 
 Nudity or sexual activity :-
 
 Indian video chat strictly prohibits any content that contains, promotes, or encourages sexual assault, sexual abuse, sexual exploitation, or sexual violence. DO NOT post any such content.
 DO NOT post, share, or send explicit content, sexual content, or nudity.
 DO NOT provide content related to prostitution, solicitation, or any other types of sex trade.
 
 Child safety infringement :-
   
  Indian video chat takes child safety with the utmost seriousness. If we become aware of content that sexually exploits, targets, or endangers children, we may with law enforcement or report cases, as appropriate.
 Indian video chat strictly prohibits any sexually explicit content featuring minors or content that sexually exploits minors. DO NOT post any such content.
 Indian video chat may remove or limit access to videos containing nudity, sexually suggestive acts, or unintentionally provocative content involving minors, as such videos could be used by others in unanticipated ways.
 DO NOT post, share, or send any content about online dating with minors, compensated dating, invasion of a minor’/s privacy, or other content that endangers minors’/ physical and mental health.
 DO NOT use public posts or private messages to harass underage users.
 
 Children’/s Privacy :-
 
  We strongly recommended this App for Adult or Age More Than age > 18. Our Service does not address anyone under the age of 18 (Children). We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers. 
 If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at """),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Checkbox(
                value: this.value,
                onChanged: (bool? value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ), //SizedBox
              Flexible(
                child: Text(
                  'I Understand That Sharing Of Inappropriate Content Will Not Be tolerated. ',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ), //Text
              SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
             //Checkbox
            ], //<Widget>[]
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Checkbox(
                value: this.valuee,
                onChanged: (bool? value) {
                  setState(() {
                    this.valuee = value!;
                  });
                },
              ), //SizedBox
              Flexible(
                child: Text(
                  'I Confirm that I\'m 18 Years old Or Above.',
                  style: TextStyle(fontSize: 10.sp),
                ),
              ), //Text
              SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
             //Checkbox
            ], //<Widget>[]
          ),
          InkWell(
            onTap: (){
              if(this.value == true&&this.valuee == true){
                Navigator.pushNamed(context,'intro01');
              }
            },
            child: Container(
              height: 7.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(
                child: Text("Get Start",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25,
                    )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
