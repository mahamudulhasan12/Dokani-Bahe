import 'package:flutter/material.dart';

class MyTextfeild extends StatelessWidget {
  const MyTextfeild({super.key,required this.controller , this.outlinBorder , this.inputType, this.maxLine,this.hintText,this.hintStyle,this.label,this.colors,this.prefixIcon,this.suffiIcon});
  final InputBorder ?  outlinBorder;
  final TextInputType ? inputType;
  final TextEditingController controller ;
  final int ? maxLine;
  final String ? hintText;
  final TextStyle ? hintStyle;
  final Widget ? label;
  final Color ? colors;
  final Widget ? suffiIcon;
  final Widget ? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(

      keyboardType: inputType,
      controller:controller ,
      maxLines: maxLine ?? 1,
      decoration: InputDecoration(
        label: label,
        hintText:hintText ,
        hintStyle: hintStyle,
        border: outlinBorder,
        fillColor:colors ,
        suffixIcon: suffiIcon,
        prefixIcon: prefixIcon,
      ),
    ) ;
  }
}
