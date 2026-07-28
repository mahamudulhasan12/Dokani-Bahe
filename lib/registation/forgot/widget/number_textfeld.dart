import 'package:flutter/material.dart';

import '../../../custom widget/my-textfeild.dart';
import '../../../custom widget/my_text.dart';

class TextFeild extends StatelessWidget {
  const TextFeild({
    super.key,
    required this.phone,
  });

  final TextEditingController phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(text: "Phone Number",fontWeight: FontWeight.bold,fontSize: 16,),
        MyTextfeild(
          controller: phone,
          hintText: "Enter Your Number ",
          prefixIcon: Icon(Icons.phone),
          outlinBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          inputType: TextInputType.number,
        ),
      ],
    );
  }
}