import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class ProductCatogary extends StatelessWidget {
  const ProductCatogary({
    super.key, required this.catogary, required this.catogaryName,
  });
  final String catogary;
  final String catogaryName;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(flex: 1,child: MyText(text: catogary,fontWeight: FontWeight.bold,)),
        MyText(text: ":",fontWeight: FontWeight.bold,),
        Expanded(flex: 2,child: MyText(text: catogaryName,)),
      ],
    );
  }
}