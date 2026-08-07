import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';
import '../../../registation/login_screen.dart';
import '../../../registation/my_account/my_account.dart';
import '../../all product/all_product.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      child: Column(
        children: [
          MyContainer(
            pading: EdgeInsets.only(left: 5, right: 5, top: 30),
            borderRadius: BorderRadius.circular(10),
            width: double.infinity,
            height: 200,
            colors: Colors.deepPurple.shade400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyContainer(
                  width: 70,
                  height: 70,
                  boxShape: BoxShape.circle,
                  boxBorder: Border.all(width: 2, color: Colors.white),
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurple.shade400,
                    radius: 40,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: MyText(
                    text: "Geust User",
                    colors: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyText(text: "mahamudlhasan@gamil.com", colors: Colors.white),
              ],
            ),
          ),
          // SizedBox(height: 10,),
          Divider(thickness: 2, color: Colors.grey.shade300),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: ListTile(
              leading: Icon(Icons.home, size: 25),
              title: MyText(
                text: "Home",
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAccountScreen()));
            },
            child: ListTile(
              leading: Icon(Icons.person, size: 25),
              title: MyText(
                text: "Profile",
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.notifications, size: 25),
              title: MyText(
                text: "Notification",
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductScreen()));
            },
            child: ListTile(
              leading: Icon(Icons.heart_broken, size: 25),
              title: MyText(
                text: "Favorites",
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: ListTile(
              leading: Icon(Icons.help_outline, size: 25),
              title: MyText(
                text: "Help & Supports",
                fontWeight: FontWeight.bold,
                colors: Colors.black,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
            },
            child: ListTile(
              leading: Icon(Icons.logout, size: 25,color: Colors.red,),
              title: MyText(
                text: "Logout",
                fontWeight: FontWeight.bold,
                colors: Colors.red,
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 20,color: Colors.redAccent),
            ),
          ),

        ],
      ),
    );
  }
}