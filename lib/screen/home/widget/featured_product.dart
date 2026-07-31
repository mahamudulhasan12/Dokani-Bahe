import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';
class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({
    super.key,
    required this.FData,
  });

  final List<dynamic> FData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: FData.length,
        itemBuilder: (context , index){
          return SizedBox(
            // height: 190,
            width: 140,
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      width: double.infinity,
                      height: 100,
                      borderRadius: BorderRadius.circular(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            fit: BoxFit.fill,
                            "${FData[index]['image']}"
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(text: "${FData[index]['category']}",fontWeight: FontWeight.bold,fontSize: 13,overflow: TextOverflow.ellipsis,),
                          MyText(text:"৳${FData[index]['discountPrice']}",fontWeight: FontWeight.bold,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(text: "৳${FData[index]['regularPrice']}",fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,colors: Colors.grey,),
                              MyText(text:"${FData[index]['perseint']}",fontWeight: FontWeight.bold,colors: Colors.orange,)
                            ],
                          ),
                        ],
                      ),

                    ),
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}