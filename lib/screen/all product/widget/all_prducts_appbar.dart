import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';

class AllProductAppBar extends StatelessWidget implements PreferredSizeWidget{
  const AllProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
      title: MyText(text: "All Products",fontSize: 18,fontWeight: FontWeight.bold,),
      actions: [
        Icon(Icons.search_outlined,size: 27),
        SizedBox(width: 10,),
        Badge.count(
          count: 3,
          child: Icon(Icons.shopping_cart_outlined),
        ),
        SizedBox(width: 12,),
      ],
      toolbarHeight: 50,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}