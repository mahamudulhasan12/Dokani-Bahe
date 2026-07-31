import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, this.height,required this.width,this.borderRadius,this.boxShape,this.boxBorder,this.colors,  this.child, this.alignment, this.pading, this.margin, this.image});
  final double? height;
  final double width;
  final BorderRadiusGeometry ? borderRadius;
  final BoxShape ? boxShape;
  final BoxBorder ? boxBorder;
  final Color ? colors;
  final Widget ? child;
  final AlignmentGeometry ?alignment;
  final EdgeInsetsGeometry ? pading;
  final EdgeInsetsGeometry ? margin;
  final DecorationImage ? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: pading,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        shape: boxShape ?? BoxShape.rectangle,
        border: boxBorder,
        color: colors ,
        image: image,
      ),
      alignment: alignment,
      child: child,
    );
  }
}
