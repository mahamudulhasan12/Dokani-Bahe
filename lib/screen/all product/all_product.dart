import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/all%20product/widget/all_prducts_appbar.dart';
import 'package:dokani_bahe/screen/all%20product/widget/all_product.dart';
import 'package:dokani_bahe/screen/all%20product/widget/filterSection.dart';
import 'package:flutter/material.dart';

import '../../Local Model/fetured_data.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({super.key});

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  List Pdata = FeturedProducts.categories;
  bool isLove  = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AllProductAppBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          Divider(thickness: 2, indent: 1, endIndent: 1, color: Colors.grey),
          FilterSection(),
          GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: Pdata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 7,
                childAspectRatio: 0.90
              ),
              itemBuilder: (context , index){
                return AllProduct(Fdata: Pdata, index: index, isLove: isLove,);
              }
          )
        ],
      ),
    );
  }
}



