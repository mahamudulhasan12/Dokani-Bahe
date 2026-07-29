import 'package:dokani_bahe/registation/login_screen.dart';
import 'package:flutter/material.dart';

import '../custom widget/my-textfeild.dart';
import '../custom widget/my_button.dart';
import '../custom widget/my_text.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  bool _isChack = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            MyText(
              text: "Create Account",
              fontSize: 26,
              fontWeight: FontWeight.bold,
              colors: Colors.black,
            ),
            MyText(
              text: "Sign up to get started",
              fontSize: 15,
              fontWeight: FontWeight.bold,
              colors: Colors.grey,
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Full Name",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  colors: Colors.black,
                ),
                SizedBox(height: 10),
                MyTextfeild(
                  controller: name,
                  hintText: "Enter Your name ",
                  prefixIcon: Icon(Icons.person),
                  outlinBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  inputType: TextInputType.text,
                ),
              ],
            ),
            SizedBox(height: 10),
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
                      controller: pass,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Confirm password",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      colors: Colors.black,
                    ),
                    SizedBox(height: 10),
                    MyTextfeild(
                      controller: confirmPass,
                      hintText: "Enter Your confirm password ",
                      prefixIcon: Icon(Icons.lock),
                      outlinBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffiIcon: Icon(Icons.remove_red_eye),
                      inputType: TextInputType.text,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: (_isChack),
                  onChanged: (bool ? newValue){
                    setState(() {
                      _isChack = newValue ?? false;
                    });
                  },
                  checkColor: Colors.white,
                  autofocus: false,
                  activeColor: Colors.orange,
                ),
                MyText(text: "I agree to the",fontSize: 13,colors: Colors.grey.shade800,fontWeight: FontWeight.bold,),
                MyText(text: "Terms & Conditions",fontSize: 14,colors: Colors.orange,fontWeight: FontWeight.bold,),
              ],
            ),
            SizedBox(height: 20),
            MyButton(
              colors: Colors.orange,
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              child: MyText(
                text: "Register",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                colors: Colors.white,
              ),
            ),


            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                MyText(text: "Already have an account?",fontSize: 14,colors: Colors.grey,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: MyText(
                    text: "Login",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    colors: Colors.orange,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
