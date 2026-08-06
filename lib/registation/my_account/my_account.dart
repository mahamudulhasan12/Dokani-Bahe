import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/registation/my_account/widget/order_section.dart';
import 'package:dokani_bahe/registation/my_account/widget/profile_section.dart';
import 'package:dokani_bahe/registation/my_account/widget/setting_section.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        title: MyText(
          text: "My Account",
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
          SizedBox(width: 10),
        ],
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          ProfielSection(),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(text: "My Order", fontWeight: FontWeight.bold),
              TextButton(
                onPressed: () {},
                child: MyText(text: "View All", colors: Colors.redAccent),
              ),
            ],
          ),
          OrderSection(),
          SizedBox(height: 10,),
          Divider(thickness: 2, color: Colors.grey.shade200),
          SizedBox(height: 10,),
          MyText(text: "Account Settings",fontSize: 16,fontWeight: FontWeight.bold,),

          Setting_section(lIcons: Icons.location_on_outlined, text: "Addresses"),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Setting_section(lIcons: Icons.payment, text: "Payment Method"),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Setting_section(lIcons: Icons.lock_outline, text: "Change Password"),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Setting_section(lIcons: Icons.notifications_active_outlined, text: "Notificaions"),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Setting_section(lIcons: Icons.help_outline, text: "Help & Support"),
          Divider(thickness: 2, color: Colors.grey.shade200),
          Setting_section(lIcons: Icons.info_outline, text: "About Us"),
          Divider(thickness: 2, color: Colors.grey.shade200),
         
          ListTile(
            leading: Icon(Icons.logout,size: 25,color: Colors.redAccent,),
            title: MyText(text: "Logout",colors: Colors.redAccent,fontWeight: FontWeight.bold,),
            trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
          ),
        ],
      ),
    );
  }
}

