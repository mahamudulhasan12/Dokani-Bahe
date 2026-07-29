import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/registation/login_screen.dart';
import 'package:dokani_bahe/registation/set_passwrd/widget/PasswordTextFild.dart';
import 'package:dokani_bahe/registation/set_passwrd/widget/condition_text.dart';
import 'package:dokani_bahe/custom%20widget/image_avater.dart';
import 'package:flutter/material.dart';

import '../../custom widget/my_button.dart';
import '../../custom widget/my_container.dart';
import '../../custom widget/my_text.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController newPass = TextEditingController();
  TextEditingController conPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15, right: 15),
        children: [
          ImageAvater(imageLink: "https://cdn-icons-png.flaticon.com/128/12795/12795759.png"),
          Column(
            children: [
              MyText(
                text: "Set New Password",
                fontSize: 25,
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              SizedBox(height: 2),
              MyText(
                text: "Create a new password for your account",
                fontSize: 14,
                fontWeight: FontWeight.bold,
                colors: Colors.grey[500],
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              MyText(text: "New passwrod", fontWeight: FontWeight.bold),
              passwordTextField(controller: newPass),
              MyText(text: "Confirm Password", fontWeight: FontWeight.bold),
              passwordTextField(controller: conPass),
            ],
          ),
          SizedBox(height: 25),
          MyContainer(
            pading: EdgeInsets.all(10),
            height: 150,
            width: MediaQuery.sizeOf(context).width,
            colors: Colors.grey.shade300,borderRadius: BorderRadius.circular(10),
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ConditionText(text: "At Least 8 characters"),
                ConditionText(text: "One uppercase letter"),
                ConditionText(text: "One number"),
                ConditionText(text: "One special character"),
              ],
            ),
          ),
          SizedBox(height: 20,),

          MyButton(
            colors: Colors.orange,
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            child: MyText(
              text: "Reset Password",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              colors: Colors.white,
            ),
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, child: MyText(text: "Back to Login",fontSize: 15,fontWeight: FontWeight.bold,colors: Colors.orange,)
          )
        ],
      ),
    );
  }
}


