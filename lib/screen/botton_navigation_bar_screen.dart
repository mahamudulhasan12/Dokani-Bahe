import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dokani_bahe/screen/search/search_screen.dart';
import 'package:flutter/material.dart';

import '../registation/login_screen.dart';
import 'all product/all_product.dart';
import 'details/details_screen.dart';
import 'home/home_screen.dart';
class BottonNavigationBarScreen extends StatefulWidget {
  const BottonNavigationBarScreen({super.key});

  @override
  State<BottonNavigationBarScreen> createState() => _BottonNavigationBarScreenState();
}

class _BottonNavigationBarScreenState extends State<BottonNavigationBarScreen> {

  final pages =[
    HomeScreen(),
    AllProductScreen(),
    SearchScreen(),
    DetailsScreen(),
    LoginScreen(),
  ];
  var _Page =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar:CurvedNavigationBar(
          index: 0,
          color: Colors.orange.shade100,

          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.orange.shade100,
          animationCurve: Curves.easeInBack,
          animationDuration: Duration(microseconds: 600),
          onTap: (index){
            setState(() {
              _Page = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.grid_view),
            Icon(Icons.search),
            Icon(Icons.bookmark_border_rounded),
            Icon(Icons.person),
          ],
        ),
      body: pages[_Page],
    );
  }
}
