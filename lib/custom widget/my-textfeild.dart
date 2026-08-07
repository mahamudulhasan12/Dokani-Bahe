import 'package:flutter/material.dart';

class MyTextfeild extends StatelessWidget {
  const MyTextfeild({super.key,required this.controller , this.outlinBorder , this.inputType, this.maxLine,this.hintText,this.hintStyle,this.label,this.colors,this.prefixIcon,this.suffiIcon, this.contentPadding, this.isDense, this.enabledBorder, this.focusedBorder, this.onTab, this.readOnly});
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
  final EdgeInsetsGeometry ? contentPadding;
  final bool ? isDense;
  final InputBorder ? enabledBorder;
  final InputBorder ? focusedBorder;
  final VoidCallback ? onTab;
  final bool ? readOnly;
    @override
  Widget build(BuildContext context) {
    return TextField(
      onTap:onTab ,
      readOnly:readOnly ?? false,
      keyboardType: inputType,
      controller:controller ,
      maxLines: maxLine ?? 1,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        isDense:isDense ,
        label: label,
        hintText:hintText ,
        hintStyle: hintStyle,
        border: outlinBorder ??OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 0.5),
        ),
        fillColor:colors ,
        suffixIcon: suffiIcon,
        prefixIcon: prefixIcon,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder
      ),

    ) ;
  }
}
