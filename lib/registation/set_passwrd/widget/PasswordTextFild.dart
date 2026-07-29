import 'package:flutter/material.dart';

import '../../../custom widget/my-textfeild.dart';

class passwordTextField extends StatelessWidget {
  const passwordTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return MyTextfeild(controller: controller,prefixIcon: Icon(Icons.lock),suffiIcon: Icon(Icons.remove_red_eye),hintText: "........",hintStyle: TextStyle(
        fontSize: 20,fontWeight: FontWeight.bold
    ),outlinBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 0.5)
    ),
      maxLine: 1,
      inputType: TextInputType.text,
      isDense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 12),
    );
  }
}
