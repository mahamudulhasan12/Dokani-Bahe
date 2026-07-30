import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/home/widget/categories_text.dart';
import 'package:dokani_bahe/screen/home/widget/search_bar_header.dart';
import 'package:dokani_bahe/screen/home/widget/slider_header.dart';
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
          SearchBarHeader(search: search),
          SizedBox(height: 15),
          SliderHeader(),
          CatergoriesText(hText: "Categories", subText: "View All", onPressed: (){}),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://similarpng.com/_next/image?url=https%3A%2F%2Fimage.similarpng.com%2Ffile%2Fsimilarpng%2Fvery-thumbnail%2F2021%2F07%2FBlack-wireless-headphones-isolated-on-transparent-background-PNG.png&w=3840&q=75",
            ),
          ),
        ],
      ),
    );
  }
}



