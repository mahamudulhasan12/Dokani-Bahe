import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/home/widget/title_text.dart';
import 'package:flutter/material.dart';

import '../../custom widget/my_appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MyAppbar(
        centerTitle: false,
        title: TitleText(),
        actions: [
          Badge.count(count: 3, child: Icon(Icons.shopping_cart_outlined)),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          MyTextfeild(
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
          ),
          SizedBox(height: 15),
          CarouselSlider(
            options: CarouselOptions(
              // height: 200,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 0.99,
              enlargeFactor: 0.3,
              // aspectRatio: 2.0
              // aspectRatio: 16/9
            ),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      MyContainer(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        height: 200,
                        width: MediaQuery.sizeOf(context).width,
                        borderRadius: BorderRadius.circular(10),
                        colors: Colors.grey,
                        alignment: Alignment.center,
                        child: MyText(text: "${i}"),
                      ),
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
