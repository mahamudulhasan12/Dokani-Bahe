import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:dokani_bahe/screen/all%20product/widget/all_prducts_appbar.dart';
import 'package:dokani_bahe/screen/all%20product/widget/filterSection.dart';
import 'package:flutter/material.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({super.key});

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
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
            itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 7,
                childAspectRatio: 0.90
              ),
              itemBuilder: (context , index){
                return Card(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Stack(
                            children: [
                              MyContainer(
                                width: double.infinity,
                                borderRadius: BorderRadius.circular(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      fit: BoxFit.fill,
                                      "https://static-01.daraz.com.bd/p/af2a654d5c53077d502d2dc80020beb3.jpg"
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(text: "boAt Airdopes 141",fontSize: 13,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),
                                Row(
                                  spacing: 4,
                                  children: [
                                    MyText(text: "৳12,99",fontSize: 14,fontWeight: FontWeight.bold,),

                                    MyText(text: "৳21,99",fontSize: 12,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,colors: Colors.grey,),
                                    MyText(text: "-40%",fontSize: 13,fontWeight: FontWeight.bold,colors: Colors.orange,),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    spacing: 7,
                                    children: [
                                      Icon(Icons.star,color: Colors.orange,size: 20,),
                                      MyText(text: "(4.5)",colors: Colors.redAccent,fontWeight: FontWeight.bold,),
                                      MyText(text: "(256)",fontWeight: FontWeight.bold,),

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                );
              }
          )
        ],
      ),
    );
  }
}

