import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController search =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: MyText(text: "Search",fontSize: 20,fontWeight: FontWeight.bold,colors: Colors.white,),
        centerTitle: true,
        bottom:PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Stack(
              children: [
                MyContainer(
                  pading: EdgeInsets.all(15),
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  colors: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
                  alignment: Alignment.center,
                  child: MyTextfeild(controller: search,outlinBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2),
                  ),isDense: true,hintText: "Search hear..",prefixIcon: Icon(Icons.search_outlined,size: 25,),),

                ),
              ],
            )
        )
      ),
    );
  }
}
