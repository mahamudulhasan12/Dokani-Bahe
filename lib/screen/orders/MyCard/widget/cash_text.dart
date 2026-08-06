import 'package:flutter/material.dart';
import '../../../../custom widget/my_text.dart';

class Cash_text extends StatelessWidget {
  const Cash_text({
    super.key, required this.title, required this.price, this.colors, this.color,
  });
  final String title;
  final String price;
  final Color?  colors;
  final Color?  color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(text: title,fontWeight: FontWeight.bold,colors: color??Colors.grey,),
        MyText(text: "৳${price}",fontWeight: FontWeight.bold,fontSize: 16,colors: colors ?? Colors.black,),
      ],
    );
  }
}