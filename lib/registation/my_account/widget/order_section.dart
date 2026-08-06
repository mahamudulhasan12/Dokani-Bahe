import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 5,
          children: [
            Icon(Icons.pages_outlined),
            MyText(text: "Processing")
          ],
        ),
        Column(
          spacing: 5,
          children: [
            Icon(Icons.delivery_dining),
            MyText(text: "Shipped")
          ],
        ),
        Column(
          spacing: 5,
          children: [
            Icon(Icons.verified_user_outlined),
            MyText(text: "Delevered")
          ],
        ),
        Column(
          spacing: 5,
          children: [
            Icon(Icons.cancel_outlined),
            MyText(text: "Cancelled")
          ],
        ),
      ],
    );
  }
}