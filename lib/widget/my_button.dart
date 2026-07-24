
import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({
    super.key, required this.height, required this.width, this.color, required this.child,
  });
  final double height;
  final double width;
  final Color ? color;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        height: height,
        width:width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? Colors.orange,
        ),
        alignment: Alignment.center,
        child: child
      ),
    );
  }
}