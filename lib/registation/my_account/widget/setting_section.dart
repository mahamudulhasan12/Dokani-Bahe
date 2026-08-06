import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class Setting_section extends StatelessWidget {
  const Setting_section({
    super.key, required this.lIcons, required this.text,
  });
  final IconData lIcons;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(lIcons,size: 25, ),
      title: MyText(text: text,fontWeight: FontWeight.bold,fontSize: 14,),
      trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20),
    );
  }
}
