import 'package:flutter/material.dart';

import '../../../custom widget/my-textfeild.dart';
class SearchBarHeader extends StatelessWidget {
  const SearchBarHeader({
    super.key,
    required this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return MyTextfeild(
      controller: search,
      suffiIcon: Icon(Icons.search_outlined, size: 25),
      outlinBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      hintText: "search for product...",
      isDense: true,
      inputType: TextInputType.text,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: Colors.grey),
      ),
    );
  }
}
