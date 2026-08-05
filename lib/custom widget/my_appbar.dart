import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({
    super.key,
    required this.title,
    this.actions,
    this.backgroundColor,
    this.centerTitle = true,
    this.elevation = 0,
    this.fontSize,
    this.colors,
    this.bottom,
    this.toolbarHight = 56,
  });

  final Widget title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool centerTitle;
  final double elevation;
  final double? fontSize;
  final Color? colors;
  final PreferredSizeWidget? bottom;
  final double toolbarHight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,

      backgroundColor: backgroundColor ?? Colors.white,

      elevation: elevation,

      actions: actions,

      bottom: bottom,

      toolbarHeight: toolbarHight,

      titleTextStyle: TextStyle(
        color: colors ?? Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: fontSize ?? 14,
      ),
    );
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(toolbarHight + (bottom?.preferredSize.height ?? 0));
  }
}
