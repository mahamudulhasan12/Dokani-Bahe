import 'package:dokani_bahe/Local%20Model/fetured_data.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({
    super.key, required this.Fdata, required this.index, required this.isLove,
  });
  final List Fdata;
  final int index;
  final bool isLove;

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
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
                    pading: EdgeInsets.all(10),
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          fit: BoxFit.fill,
                          "${widget.Fdata[widget.index]['image']}"
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: -12,
                    child: IconButton(
                        onPressed: (){
                         setState(() {
                           widget.isLove !=widget.isLove;
                         });
                    },
                        icon: Icon(
                          widget.isLove ? Icons.favorite : Icons.favorite_border,
                          color: widget.isLove ? Colors.red : Colors.grey,
                          size: 22,
                        ),
                  )
                  )
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
                    MyText(text: "${widget.Fdata[widget.index]['category']}",fontSize: 13,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,),
                    Row(
                      spacing: 4,
                      children: [
                        MyText(text: "৳${widget.Fdata[widget.index]['discountPrice']}",fontSize: 14,fontWeight: FontWeight.bold,),

                        MyText(text: "৳${widget.Fdata[widget.index]['regularPrice']}",fontSize: 12,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough,colors: Colors.grey,),
                        MyText(text: "${widget.Fdata[widget.index]["perseint"]}",fontSize: 13,fontWeight: FontWeight.bold,colors: Colors.orange,),
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