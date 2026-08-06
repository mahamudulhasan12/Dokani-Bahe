
import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  const MyButton({
    super.key, required this.height, required this.width, this.colors,this.boxBorder, this.onTab, this.child, this.borderRadius,
  });
  final double height;
  final double width;
  final VoidCallback ? onTab;
  final Color ?colors;
  final BoxBorder ? boxBorder;
  final BorderRadiusGeometry ? borderRadius;
  final Widget ? child;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: height ?? 50,
        width:width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          color: colors ?? Colors.orangeAccent ,
          border:boxBorder,
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}