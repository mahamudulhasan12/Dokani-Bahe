import 'package:dokani_bahe/Local%20Model/fetured_data.dart';
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
  TextEditingController search = TextEditingController();
  List data = FeturedProducts.categories;
  List temp = [];
  List mainList =[];
  
  searchData(){
    temp = data.where((value)=>value['category'].toString().toLowerCase().contains(search.text.toLowerCase())).toList();
  }
  
  
  @override
  void initState() {
    temp.addAll(data);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: MyText(
          text: "Search",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          colors: Colors.white,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Stack(
            children: [
              MyContainer(
                pading: EdgeInsets.all(15),
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                colors: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                alignment: Alignment.center,
                child: MyTextfeild(
                  controller: search,
                  outlinBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: .5),
                  ),
                  isDense: true,
                  hintText: "Search hear..",
                  prefixIcon: Icon(Icons.search_outlined, size: 25),
                  inputType: TextInputType.text,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: .5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: .5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Opacity(
              opacity: 0.5,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey.shade100,
                child: Image.asset(
                    height: 50,
                    width: 50,
                    "assets/images/shop.png"
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
