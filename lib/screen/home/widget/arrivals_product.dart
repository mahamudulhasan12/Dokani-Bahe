import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class ArrivalsProduct extends StatelessWidget {
  const ArrivalsProduct({
    super.key, required this.image, required this.productName, required this.price,
  });
  final String image;
  final String productName ;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 125,
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Expanded(
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: MyContainer(
                  width: double.infinity,
                  height: 80,
                  borderRadius: BorderRadius.circular(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Divider(height: 0.1,),
            // Product Information
            Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyText(
                    text: productName,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                  MyText(
                    text: price,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}