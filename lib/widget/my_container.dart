import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key,required this.height,required this.width,this.borderRadius,this.boxShape,this.boxBorder,this.colors,  this.child, this.alignment});
  final double  height;
  final double width;
  final BorderRadiusGeometry ? borderRadius;
  final BoxShape ? boxShape;
  final BoxBorder ? boxBorder;
  final Color ? colors;
  final Widget ? child;
  final AlignmentGeometry ?alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        shape: boxShape ?? BoxShape.rectangle,
        border: boxBorder,
        color: colors ,
      ),
      alignment: alignment,
      child: child,
    );
  }
}
