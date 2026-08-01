import 'package:dokani_bahe/Local%20Model/fetured_data.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({
    super.key, required this.Fdata, required this.index,
  });
  final List Fdata;
  final int index;

  @override
  Widget build(BuildContext context) {
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
                          "${Fdata[index]['image']}"
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
                  spacing: 2,
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
                    Row(
                      spacing: 7,
                      children: [
                        Icon(Icons.star,color: Colors.orange,size: 20,),
                        MyText(text: "(4.5)",colors: Colors.redAccent,fontWeight: FontWeight.bold,),
                        MyText(text: "(256)"),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}