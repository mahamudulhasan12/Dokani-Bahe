import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class ConditionText extends StatelessWidget {
  const ConditionText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Icon(Icons.check_circle,color: Colors.green,),

        MyText(text:text ,fontSize: 12,fontWeight: FontWeight.bold,)
      ],
    );
  }
}