import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class CategoriesProduct extends StatelessWidget {
  const CategoriesProduct({
    super.key,
    required this.imageLink,
    required this.text,
  });
  final String imageLink;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 1,
      children: [
        Expanded(
          flex: 3,
          child: MyContainer(
            height: 90,
            width: 55,
            boxShape: BoxShape.circle,
            colors: Colors.grey.shade400,
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade400,
              radius: 20,
              backgroundImage: NetworkImage(imageLink),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: MyText(
            text: text,
            fontSize: 11.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
