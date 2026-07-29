
import 'package:dokani_bahe/registation/forgot/widget/number_textfeld.dart';
import 'package:dokani_bahe/registation/forgot/widget/two_button.dart';
import 'package:dokani_bahe/registation/login_screen.dart';
import 'package:dokani_bahe/custom%20widget/image_avater.dart';
import 'package:dokani_bahe/registation/verify_otp_screen.dart';
import 'package:flutter/material.dart';

import '../../custom widget/my-textfeild.dart';
import '../../custom widget/my_button.dart';
import '../../custom widget/my_container.dart';
import '../../custom widget/my_text.dart';
import '../../custom widget/text_back.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 10,top: 40),
        child: ListView(
          children: [
            ImageAvater(imageLink: "https://cdn-icons-png.flaticon.com/128/6665/6665303.png"),
            SizedBox(height: 10,),
            Column(
              children: [
                MyText(text: "Forgot Password?",fontSize: 20,fontWeight: FontWeight.bold,),
                SizedBox(height: 10,),
                MyText(text: "Don't worry! It happens.plase enter",fontSize: 14,fontWeight: FontWeight.bold,colors: Colors.grey[500],),
                MyText(text: "your registered phone number or email address",fontSize: 14,fontWeight: FontWeight.bold,colors: Colors.grey[500],),
              ],
            ),
            SizedBox(height: 25,),
            TwoButton(),
            SizedBox(height: 10,),
            TextFeild(phone: phone),
            SizedBox(height: 25,),
            MyButton(
              height: 55,
              width: MediaQuery.sizeOf(context).width,
              colors: Colors.orange,
              child: MyText(
                text: "Send OTP",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                colors: Colors.white,
              ),
              onTab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyOtpScreen()));
              },
            ),
            SizedBox(height: 10,),
            Text_BackButton(text: "Remember your password", buttonNmae: "Login", onTab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            }
            ),
          ]
        ),

      ),
    );
  }
}





