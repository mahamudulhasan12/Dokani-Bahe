import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/all%20product/all_product.dart';
import 'package:dokani_bahe/screen/all%20product/widget/all_prducts_appbar.dart';
import 'package:dokani_bahe/screen/details/widget/product_catogary.dart';
import 'package:flutter/material.dart';

class SucessfullOrderScreen extends StatefulWidget {
  const SucessfullOrderScreen({super.key});

  @override
  State<SucessfullOrderScreen> createState() => _SucessfullOrderScreenState();
}

class _SucessfullOrderScreenState extends State<SucessfullOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10,),
        children: [
          MyContainer(
            width: MediaQuery.sizeOf(context).width,
            height: 220,
            borderRadius: BorderRadius.circular(10),
            colors: Colors.green.shade50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  height: 90,
                  width: 80,
                  "https://cdn-icons-png.flaticon.com/128/14090/14090371.png",
                ),
                MyText(
                  text: "Order Placed \n Sucessfully!",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                MyText(
                  text: "Thanks You for your order. We have received",
                  fontWeight: FontWeight.bold,
                  colors: Colors.grey,
                ),
                MyText(
                  text: "your order and will process it soon",
                  fontWeight: FontWeight.bold,
                  colors: Colors.grey,
                ),
              ],
            ),
          ),
          MyContainer(
            height: 175,
            width: double.infinity,
            pading: EdgeInsets.all(10),
            borderRadius: BorderRadius.circular(10),
            boxBorder: Border.all(width: 0.5, color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: "Order ID", colors: Colors.grey),
                MyText(text: "#DB123456", fontWeight: FontWeight.bold),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "order Date", colors: Colors.grey),
                    MyText(text: "20 May,2025", colors: Colors.grey),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: "Total Amount",
                      colors: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    MyText(
                      text: "৳ 6,250",
                      colors: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Payment Method", colors: Colors.grey),
                    MyText(
                      text: "bKash",
                      colors: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(text: "Whats's Next?", fontWeight: FontWeight.bold),
              ListTile(
                leading: Icon(Icons.email_outlined),
                title: MyText(
                  text: "We have sent an order confirmation to your email",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: MyText(
                  text: "You can check your order status for Orders section",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              ListTile(
                leading: Icon(Icons.perm_contact_cal_rounded),
                title: MyText(
                  text: "Our team will contact you if needed",
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          MyButton(
            child: MyText(
              text: "Continue Shoppiing",
              fontWeight: FontWeight.bold,
              colors: Colors.white,
            ),
            onTab: () {},
          ),
          SizedBox(height: 10),
          MyButton(
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductScreen()));
            },

            child: MyText(
              text: "View My Orders",
              fontWeight: FontWeight.bold,
              colors: Colors.orangeAccent,
            ),
            boxBorder: Border.all(width: 1, color: Colors.orange),
            colors: Colors.white,
          ),
        ],
      ),
    );
  }
}
