import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/orders/Checkout/widget/delivery_address.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_button.dart';
import '../MyCard/widget/cash_text.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

enum pMethod { bKash, Nagad, Cash, Visha }

class _CheckoutScreenState extends State<CheckoutScreen> {
  pMethod? _select = pMethod.bKash;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        title: MyText(
          text: "Checkout",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          DeliveryAddress(),
          SizedBox(height: 10),
          MyContainer(
            height: 265,
            width: MediaQuery.sizeOf(context).width,
            boxBorder: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
            child: Column(
              children: [
                ListTile(
                  leading: Radio(
                    activeColor: Colors.orangeAccent,
                    value: pMethod.bKash,
                    groupValue: _select,
                    onChanged: (pMethod? value) {
                      setState(() {
                        _select = value;
                      });
                    },
                  ),
                  title: MyText(text: "bKash", fontWeight: FontWeight.bold),
                  trailing: Image.network(
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                    "https://static.vecteezy.com/system/resources/thumbnails/068/764/270/small_2x/bkash-logo-mobile-banking-app-icon-transparent-background-free-png.png",
                  ),
                ),

                SizedBox(height: 10),
                ListTile(
                  title: MyText(text: "Nagad", fontWeight: FontWeight.bold),
                  leading: Radio(
                    activeColor: Colors.orangeAccent,
                    value: pMethod.Nagad,
                    groupValue: _select,
                    onChanged: (pMethod? value) {
                      setState(() {
                        _select = value;
                      });
                    },
                  ),
                  trailing: Image.network(
                    height: 30,
                    width: 30,
                    fit: BoxFit.fill,
                    "https://static.freepnglogo.com/images/all_img/1725618898nagad-vertical-logo-png.png",
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  title: MyText(
                    text: "Cash on Delivery",
                    fontWeight: FontWeight.bold,
                  ),
                  leading: Radio(
                    activeColor: Colors.orangeAccent,
                    value: pMethod.Cash,
                    groupValue: _select,
                    onChanged: (pMethod? value) {
                      setState(() {
                        _select = value;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  title: MyText(
                    text: "Visa / MasterCard",
                    fontWeight: FontWeight.bold,
                  ),
                  leading: Radio(
                    activeColor: Colors.orangeAccent,
                    value: pMethod.Visha,
                    groupValue: _select,
                    onChanged: (pMethod? value) {
                      setState(() {
                        _select = value;
                      });
                    },
                  ),
                  trailing: Image.network(
                    height: 30,
                    width: 70,
                    fit: BoxFit.fill,
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCawExf6rf03JZ5q_dnB7Yo9M2caRxuU-Q4Q&s",
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
                  colors: Colors.green,
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
                  text: "Place Order",
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
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Icon(Icons.lock_outline,size: 18,),
              MyText(text: "Your payment information is secure",colors: Colors.grey,fontSize: 12,),
            ],
          )
        ],
      ),
    );
  }
}
