import 'package:dokani_bahe/screen/home/home_screen.dart';

import 'package:flutter/material.dart';

import '../custom widget/my_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    toFun(context);
    super.initState();
  }

  Future toFun(BuildContext context)async{
    await Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                  opacity:AlwaysStoppedAnimation(0.1),
                  fit: BoxFit.fill,
                  "assets/images/bakcround.png"
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150
                  ),
                 Image.asset(
                   height: 150,
                   width: 200,
                   "assets/images/shop.png"
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(text: "Dokani",fontSize: 35,fontWeight: FontWeight.bold,colors: Colors.black,),
                      SizedBox(width: 10,),
                      MyText(text: "Bahe",fontSize: 35,fontWeight: FontWeight.bold,colors: Colors.orange,),
                    ],
                  ),
                  MyText(text: "উত্তরবঙ্গের আপনার নিজের দোকান",fontSize: 18,fontWeight: FontWeight.bold,colors: Colors.grey.shade800,),
                  SizedBox(height: 150,),
                  Image.asset(
                      height: 50,
                      width: 50,
                      color: Colors.orange,
                      "assets/images/re.png"
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
