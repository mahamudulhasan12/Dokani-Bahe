import 'dart:developer';

import 'package:dokani_bahe/registation/forgot/forgot_screen.dart';
import 'package:dokani_bahe/registation/register_screen.dart';
import 'package:flutter/material.dart';

import '../custom widget/my-textfeild.dart';
import '../custom widget/my_button.dart';
import '../custom widget/my_container.dart';
import '../custom widget/my_text.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      // ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            MyText(
              text: "Welcome Back!👋",
              fontSize: 26,
              fontWeight: FontWeight.bold,
              colors: Colors.black,
            ),
            MyText(
              text: "Login to continue shopping",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              colors: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    Positioned(
                      left: 5,
                      bottom: -5,
                      child: Image.asset(
                        height: 90,
                        width: 90,
                        "assets/images/shop.png",
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: -5,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Phone Number",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.black,
                ),
                SizedBox(height: 10),
                MyTextfeild(
                  controller: phone,
                  hintText: "Enter Your Number ",
                  prefixIcon: Icon(Icons.phone),
                  outlinBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputType: TextInputType.number,
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Password",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.black,
                ),
                SizedBox(height: 10),
                MyTextfeild(
                  controller: password,
                  hintText: "Enter Your password ",
                  prefixIcon: Icon(Icons.lock),
                  outlinBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffiIcon: Icon(Icons.remove_red_eye),
                  inputType: TextInputType.text,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotScreen()));
                  },
                  child: MyText(
                    text: "Forgot Password",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    colors: Colors.orange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            MyButton(
              colors: Colors.orange,
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              child: MyText(
                text: "Login",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                colors: Colors.white,
              ),

              onTab: (){

              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyContainer(height: 1, width: 100, colors: Colors.grey),
                MyText(
                  text: "or continue with",
                  fontSize: 14,
                  colors: Colors.grey.shade600,
                ),
                MyContainer(height: 1, width: 100, colors: Colors.grey),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                MyContainer(height: 55, width: 150,borderRadius: BorderRadius.circular(10),boxBorder: BoxBorder.all(width: 1,color: Colors.grey),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      height: 20,
                      width: 20,
                      fit: BoxFit.fill,
                      "https://cdn-icons-png.flaticon.com/128/281/281764.png"
                    ),
                    MyText(text: "Google",fontSize: 16,fontWeight: FontWeight.bold,colors: Colors.grey.shade800,)
                  ],
                ),
                ),
                MyContainer(height: 55, width: 150,borderRadius: BorderRadius.circular(10),boxBorder: BoxBorder.all(width: 1,color: Colors.grey),
                  child: Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          height: 20,
                          width: 20,
                          fit: BoxFit.fill,
                          "https://cdn-icons-png.flaticon.com/128/15047/15047435.png"
                      ),
                      MyText(text: "Facebook",fontSize: 16,fontWeight: FontWeight.bold,colors: Colors.grey.shade800,)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                MyText(text: "Don't have an account?",fontSize: 14,colors: Colors.grey,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                  },
                  child: MyText(
                    text: "Register",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    colors: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
