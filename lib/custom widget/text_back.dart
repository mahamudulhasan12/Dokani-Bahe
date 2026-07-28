import 'package:flutter/material.dart';

import 'my_text.dart';

class Text_BackButton extends StatelessWidget {
  const Text_BackButton({
    super.key, required this.text, required this.buttonNmae, required this.onTab,
  });
  final String text;
  final String buttonNmae;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        MyText(text: text,fontSize: 15,colors: Colors.grey,),
        InkWell(
          onTap: onTab,
          child: MyText(
            text:buttonNmae ,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            colors: Colors.orange,
          ),

        ),
      ],
    );
  }
}
