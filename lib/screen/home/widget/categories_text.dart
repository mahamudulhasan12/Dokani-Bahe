import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class CatergoriesText extends StatelessWidget {
  const CatergoriesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(text: "Catergories",fontSize: 15,fontWeight: FontWeight.bold,),
        TextButton(onPressed: (){

        }, child: MyText(text: "View All",fontSize: 13,fontWeight: FontWeight.bold,colors: Colors.orange,),)
      ],
    );
  }
}