import 'package:flutter/material.dart';

import '../../../../custom widget/my_text.dart';

class Cash_money extends StatelessWidget {
  const Cash_money({
    super.key, required this.title, required this.price,
  });
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(text: title,fontWeight: FontWeight.bold,),
        MyText(text: "৳${price}",fontWeight: FontWeight.bold,fontSize: 16,),
      ],
    );
  }
}