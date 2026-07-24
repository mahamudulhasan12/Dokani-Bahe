import 'package:dokani_bahe/widget/my_container.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10,right: 10,top: 40),
        child: Column(
          children: [
            Center(
              child: MyContainer(height: 90, width: 90,colors: Colors.orange.shade50,boxShape: BoxShape.circle,
                boxBorder: BoxBorder.all(width: 0.5,color: Colors.grey),
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.orange.shade50,
                  radius: 30,
                  child: Image.network(
                    height: 70,
                    width: 70,
                    color: Colors.orange,
                    "https://cdn-icons-png.flaticon.com/128/3064/3064481.png"
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
