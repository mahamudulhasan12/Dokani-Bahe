import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/text_back.dart';
import 'package:dokani_bahe/registation/set_passwrd/set_password.dart';
import 'package:flutter/material.dart';

import '../custom widget/my_button.dart';
import '../custom widget/my_text.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10,right: 10,top: 120),
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyText(text: "Verify OTP",fontSize: 22,fontWeight: FontWeight.bold,colors: Colors.black,),
              SizedBox(height: 10,),
              MyText(text: "Enter the 6-digit code sent",fontSize: 14,fontWeight: FontWeight.bold,colors: Colors.grey[700],),
              MyText(text: "+8801913242701",fontSize: 14,fontWeight: FontWeight.bold,colors: Colors.orange,),
            ],
          ),
          SizedBox(height: 50,),
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context , index){
                return Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    spacing: 5,
                    children: [
                      MyContainer(height: 50, width: 44,
                        colors: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxBorder: Border.all(width: 1,color: Colors.grey),
                        alignment: Alignment.center,
                        child: MyText(text: "${index}",fontSize: 18,fontWeight: FontWeight.bold,),
                      ),
                      
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20,),
          Text_BackButton(text: "Didn't receive code?", buttonNmae: "Resend OTP", onTab: (){

          }
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(text: "(00:25)",fontWeight: FontWeight.bold,colors: Colors.grey,),
              MyText(text: "(00:25)",fontWeight: FontWeight.bold,colors: Colors.grey,),
            ],
          ),
          SizedBox(height: 25,),
          MyButton(
            height: 55,
            width: MediaQuery.sizeOf(context).width,
            colors: Colors.orange,
            child: MyText(
              text: "Verify OTP",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              colors: Colors.white,
            ),
            onTab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SetPassword()));
            },
          ),
        ],
      ),
    );
  }
}
