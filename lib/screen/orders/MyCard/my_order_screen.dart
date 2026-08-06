import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/screen/all%20product/widget/all_prducts_appbar.dart';
import 'package:dokani_bahe/screen/orders/Checkout/checkout_screen.dart';
import 'package:dokani_bahe/screen/orders/MyCard/widget/cash_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

import '../../../custom widget/my_text.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  int i = 1;
  void addCount() {
    setState(() {
      if (i < 20) {
        i++;
      }
    });
  }

  void subCount() {
    setState(() {
      if (i > 1) {
        i--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: "My Cart",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Icon(Icons.heart_broken_outlined, size: 27),
          SizedBox(width: 10),
          Badge.count(count: 3, child: Icon(Icons.shopping_cart_outlined)),
          SizedBox(width: 12),
        ],
        toolbarHeight: 50,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          MyContainer(
            pading: EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            borderRadius: BorderRadius.circular(10),
            colors: Colors.green.shade50,
            child: Column(
              spacing: 20,
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle_outline, color: Colors.green),
                    MyText(text: "You are"),
                    MyText(text: "৳ 630", fontWeight: FontWeight.bold),
                    MyText(text: "away from free shipping!"),
                    Spacer(),
                    Icon(Icons.delivery_dining, size: 25),
                  ],
                ),

                LinearPercentIndicator(
                  width: 320,
                  lineHeight: 15,
                  percent: 0.68,
                  barRadius: const Radius.circular(20),
                  progressColor: Colors.green,
                  backgroundColor: Colors.grey.shade300,
                ),
              ],
            ),
          ),
          Card(
            child: MyContainer(
              pading: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              height: 140,
              borderRadius: BorderRadius.circular(10),
              boxBorder: Border.all(width: 0.5, color: Colors.grey),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: MyContainer(
                      width: 70,
                      height: 70,
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnpgqpWJorXfwlwsAbOQhwnSBABZxEZ75dQg&s",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "boAtRockerz 450 Pro",
                          overflow: TextOverflow.ellipsis,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        MyText(text: "BDT 830", fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            addCount();
                          },
                          icon: Icon(Icons.add),
                          padding: EdgeInsets.zero,
                        ),
                        MyText(text: "${i}", fontWeight: FontWeight.bold),
                        IconButton(
                          onPressed: () {
                            subCount();
                          },
                          icon: Icon(Icons.minimize),
                          padding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: MyContainer(
              pading: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              height: 140,
              borderRadius: BorderRadius.circular(10),
              boxBorder: Border.all(width: 0.5, color: Colors.grey),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: MyContainer(
                      width: 70,
                      height: 70,
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCvyXfEp3S4ZyzfhZ4ptzI1RUW1TM9SJqW9w&s",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Pealme Buds T300",
                          overflow: TextOverflow.ellipsis,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        MyText(text: "BDT 830", fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            addCount();
                          },
                          icon: Icon(Icons.add),
                          padding: EdgeInsets.zero,
                        ),
                        MyText(text: "${i}", fontWeight: FontWeight.bold),
                        IconButton(
                          onPressed: () {
                            subCount();
                          },
                          icon: Icon(Icons.minimize),
                          padding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),

          MyContainer(
            pading: EdgeInsets.all(5),
            height: 60,
            width: MediaQuery.sizeOf(context).width,
            borderRadius: BorderRadius.circular(10),
            boxBorder: Border.all(width: 0.5, color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.password_sharp),
                    MyText(
                      text: "Have a coupon code?",
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: MyText(
                    text: "Apply",
                    fontWeight: FontWeight.bold,
                    colors: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          MyContainer(
            pading: EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width,
            height: 155,
            borderRadius: BorderRadius.circular(10),
            boxBorder: Border.all(width: 0.5, color: Colors.grey),
            child: Column(
              spacing: 5,
              children: [
                Cash_text(title: "Subtotal (2 items)", price: "2,500"),
                Cash_text(title: "Shipping Charge", price: "60"),
                Cash_text(
                  title: "Discount",
                  price: "-300",
                  colors: Colors.blue,
                ),
                Divider(),
                Cash_text(title: "Totla", color: Colors.black, price: "2,200"),
              ],
            ),
          ),
          SizedBox(height: 10),
          MyButton(
            height: 50,
            width: double.infinity,
            colors: Colors.orange,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                MyText(
                  text: "Proceed to Checkout",
                  fontWeight: FontWeight.bold,
                  colors: Colors.white,
                  fontSize: 16,
                ),
                Icon(Icons.arrow_forward, color: Colors.white),
              ],
            ),
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreen()));
            },
          ),
        ],
      ),
    );
  }
}
