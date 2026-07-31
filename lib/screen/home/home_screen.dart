import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dokani_bahe/Local%20Model/best_product.dart';
import 'package:dokani_bahe/Local%20Model/caterogris_data.dart';
import 'package:dokani_bahe/Local%20Model/fetured_data.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/registation/login_screen.dart';
import 'package:dokani_bahe/screen/all%20product/all_product.dart';
import 'package:dokani_bahe/screen/details/details_screen.dart';
import 'package:dokani_bahe/screen/home/widget/arrivals_product.dart';
import 'package:dokani_bahe/screen/home/widget/best_seller_product.dart';
import 'package:dokani_bahe/screen/home/widget/categories_product.dart';
import 'package:dokani_bahe/screen/home/widget/categories_text.dart';
import 'package:dokani_bahe/screen/home/widget/featured_product.dart';
import 'package:dokani_bahe/screen/home/widget/search_bar_header.dart';
import 'package:dokani_bahe/screen/home/widget/slider_header.dart';
import 'package:dokani_bahe/screen/home/widget/title_text.dart';
import 'package:flutter/material.dart';

import '../../custom widget/my_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  List data = CaterogrisData.categories;
  List FData = FeturedProducts.categories;
  List BSP = BestProduct.BestPro;

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
          CatergoriesText(
            hText: "Categories",
            subText: "View All",
            onPressed: () {},
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoriesProduct(
                    imageLink: '${data[index]['image']}',
                    text: '${data[index]['category']}',
                  ),
                );
              },
            ),
          ),
          CatergoriesText(
            hText: "Featured Products",
            subText: "View All",
            onPressed: () {},
          ),
          FeaturedProduct(FData: FData),
          SizedBox(height: 10),
          MyText(
            text: "New Arrivals",
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(

              physics: ScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: FData.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: ArrivalsProduct(image: "${FData[index]["image"]}", productName: "${FData[index]["category"]}", price: "৳${FData[index]["discountPrice"]}",),
                );
              },
            ),
          ),
          CatergoriesText(hText: "Best Seller Product", subText: "View All", onPressed: (){}),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: BSP.length,
              itemBuilder: (context , index){
                return BestSellerProduct(image: '${BSP[index]['image']}',);
              },
            ),
          ),
          CatergoriesText(hText: "Top Product", subText: "View All", onPressed: (){}),
          SizedBox(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: BSP.length,
              itemBuilder: (context , index){
                return BestSellerProduct(image: '${BSP[index]['image']}',);
              },
            ),
          ),
        ],
      ),

    );
  }
}



