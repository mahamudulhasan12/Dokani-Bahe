import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';

class BestSellerProduct extends StatelessWidget {
  const BestSellerProduct({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: MyContainer(
        pading: EdgeInsets.all(10),
        width: 100,
        height: 100,
        borderRadius: BorderRadius.circular(10),
        colors: Colors.grey.shade300,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                image)
        ),
      ),
    );
  }
}
