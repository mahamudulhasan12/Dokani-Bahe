import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class CatergoriesText extends StatelessWidget {
  const CatergoriesText({
    super.key, required this.hText, required this.subText, required this.onPressed,
  });

  final String hText;
  final String subText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(text: hText,fontSize: 15,fontWeight: FontWeight.bold,),
        TextButton(onPressed: onPressed, child: MyText(text: subText,fontSize: 13,fontWeight: FontWeight.bold,colors: Colors.orange,),),
      ],
    );
  }
}