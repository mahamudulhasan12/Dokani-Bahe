import 'package:flutter/material.dart';
class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan(
                text: "Dokani",style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black
              ),
              ),
              WidgetSpan(
                child: SizedBox(width: 10,),
              ),
              TextSpan(
                text: "Bahe",style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange
              ),
              ),
            ]
        )
    );
  }
}