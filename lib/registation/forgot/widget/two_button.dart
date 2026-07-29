
import 'package:flutter/material.dart';

import '../../../custom widget/my_button.dart';
import '../../../custom widget/my_text.dart';

class TwoButton extends StatelessWidget {
  const TwoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Expanded(child: MyButton(height: 55, width: 150, onTab: (){}, child: MyText(text: "Phone",fontSize: 18,fontWeight: FontWeight.bold,colors: Colors.orange,),colors:Colors.white,boxBorder: Border.all(width: 2,color: Colors.orange),)),
        Expanded(child: MyButton(height: 55, width: 150, onTab: (){}, child: MyText(text: "Email",fontSize: 18,fontWeight: FontWeight.bold,colors: Colors.black,),colors:Colors.grey,boxBorder: Border.all(width: 0.5,color: Colors.black),))
      ]
    );
  }
}