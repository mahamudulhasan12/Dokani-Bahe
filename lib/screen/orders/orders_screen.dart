import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      animationDuration: Duration(microseconds: 100),
      child: Scaffold(
        appBar: MyAppbar(
          // toolbarHight: 70,
          title: MyText(text: "My Orders",fontSize: 18,fontWeight: FontWeight.bold,colors: Colors.black,),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
            SizedBox(width: 5,),
            Badge.count(
              count: 3,
              child: Icon(Icons.shopping_cart_outlined),
            ),
            SizedBox(width: 15,)
          ],

          bottom: TabBar(
             padding: EdgeInsets.all(10),
            isScrollable: false,
            labelPadding:EdgeInsets.all(5),
            tabs: [
              Tab(text: "All",),
              Tab(text: "Processing"),
              Tab(text: "Shipped"),
              Tab(text: "Delivered"),
              Tab(text: "Cancelled"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: MyText(text: "Hello"),),
            Center(child: MyText(text: "wellcome"),),
            Center(child: MyText(text: "Hello"),),
            Center(child: MyText(text: "wellcome"),),
            Center(child: MyText(text: "Hello"),),

          ],
        ),
      ),
    );
  }
}
