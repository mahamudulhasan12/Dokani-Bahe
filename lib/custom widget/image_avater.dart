import 'package:flutter/material.dart';

import 'my_container.dart';

class ImageAvater extends StatelessWidget {
  const ImageAvater({
    super.key, required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyContainer(height: 90, width: 90,colors: Colors.grey.shade200,boxShape: BoxShape.circle,
        // boxBorder: BoxBorder.all(width: 0.5,color: Colors.grey),
        alignment: Alignment.center,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          radius: 30,
          child: Image.network(
              height: 70,
              width: 70,
              color: Colors.green.shade400,
              imageLink
          ),
        ),
      ),
    );
  }
}