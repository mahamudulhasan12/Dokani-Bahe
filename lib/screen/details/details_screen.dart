import 'package:carousel_slider/carousel_slider.dart';
import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/details/widget/product_catogary.dart';
import 'package:flutter/material.dart';

import '../../custom widget/my_container.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Badge.count(count: 3, child: Icon(Icons.shopping_cart_outlined)),
          SizedBox(width: 10),
        ],
        toolbarHeight: 30,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(height: 5),
          CarouselSlider(
            options: CarouselOptions(
              height: 250,
              // initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              viewportFraction: 0.99,
              enlargeFactor: 0.1,
              // aspectRatio: 2.0
              // aspectRatio: 16/9
            ),
            items:
                [
                  "https://havit.com.bd/wp-content/uploads/2025/08/H612BT-PRO-1-768x768.jpg",
                  "https://www.ryans.com/storage/products/small/havit-h2590bt-pro-bluetooth-black-11714304039.webp",
                  "https://sc04.alicdn.com/kf/Hf2680aefa9b443fe962b4eca633c8220O.jpg",
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          MyContainer(
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            // height: 120,
                            width: MediaQuery.sizeOf(context).width,
                            borderRadius: BorderRadius.circular(10),
                            colors: Colors.grey,
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                fit: BoxFit.fill,
                                "${i}",
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 1,
                            left: 1,
                            child: MyContainer(
                              width: 70,
                              height: 25,
                              borderRadius: BorderRadius.circular(20),
                              alignment: Alignment.center,
                              colors: Colors.redAccent,

                              child: MyText(
                                text: "-40 %",
                                colors: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "boAt Rockerz 450 Pro",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share_outlined, size: 22),
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.star, size: 20, color: Colors.orange),
                  MyText(
                    text: "4.5",
                    colors: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                  MyText(
                    text: "(320 Reviews)",
                    fontSize: 13,
                    colors: Colors.grey.shade700,
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  MyText(
                    text: "৳2,399",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  MyText(
                    text: "৳3,999",
                    decoration: TextDecoration.lineThrough,
                    colors: Colors.grey,
                  ),
                  MyText(
                    text: "-40%",
                    fontSize: 13,
                    colors: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.grey),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 5,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 10,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.supervised_user_circle_outlined, size: 22),
                      MyText(
                        text: "Super Extra Bass",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.playlist_add_check_circle_outlined, size: 22),
                      MyText(
                        text: "Up to 15H Playback",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 40,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.support_agent_sharp, size: 22),
                      MyText(
                        text: "Soft Padded Ear Cushions",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.verified_user_outlined, size: 22),
                      MyText(
                        text: "1 Year Warranty",
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.grey),
          MyText(
            text: "Description",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 14, color: Colors.black),
              children: [
                TextSpan(
                  text:
                      "Headphones are personal audio devices that convert electrical signals into clear sound waves using internal speakers called drivers. Key types include over-ear, on-ear, and in-ear models that connect via cords or wireless Bluetooth technology.",
                ),
              ],
            ),
          ),
          Column(
            children: [
              ProductCatogary(catogary: "Brand", catogaryName: "boAt"),
              ProductCatogary(
                catogary: "Model ",
                catogaryName: "Rockerz 450 Pro",
              ),
              ProductCatogary(
                catogary: "Battery Life",
                catogaryName: "Up to 15 Hours",
              ),
              ProductCatogary(
                catogary: "Connectivity",
                catogaryName: "Bluetooth 5.0",
              ),
              ProductCatogary(catogary: "Warranty", catogaryName: "1 Year"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(
                height: 50,
                width: 160,
                boxBorder: Border.all(width: 1, color:Colors.deepOrange,),
                child: MyText(
                  text: "Add Order",
                  colors:Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                onTab: () {},
              ),
              MyButton(
                height: 50,
                width: 160,
                colors: Colors.deepOrange,
                child: MyText(text: "Buy Now",fontWeight: FontWeight.bold,colors: Colors.white,fontSize: 16,),
                onTab: (){

                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
