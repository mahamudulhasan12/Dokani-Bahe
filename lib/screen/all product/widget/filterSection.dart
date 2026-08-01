import 'package:flutter/material.dart';

import '../../../custom widget/my_text.dart';
class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(Icons.filter_list),
            MyText(text: "Filter",fontSize: 14,fontWeight: FontWeight.bold,)
          ],
        ),
        Row(
          spacing: 5,
          children: [

            MyText(text: "Sort My",fontSize: 14,fontWeight: FontWeight.bold,),
            Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(Icons.grid_view),
            MyText(text: "Grid",fontSize: 14,fontWeight: FontWeight.bold,)
          ],
        ),
      ],
    );
  }
}
