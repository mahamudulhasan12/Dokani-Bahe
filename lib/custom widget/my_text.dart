import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key,required this.text,this.fontSize,this.fontWeight,this.colors,this.overflow, this.decoration, this.letterSpacing});
  final String text;
  final double ? fontSize;
  final FontWeight ? fontWeight;
  final Color ? colors;
  final TextOverflow ? overflow;
  final TextDecoration ? decoration;
  final double ? letterSpacing;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight,
      color: colors,
      overflow: overflow,
      decoration: decoration,
      letterSpacing: letterSpacing,
    ),);
  }
}
