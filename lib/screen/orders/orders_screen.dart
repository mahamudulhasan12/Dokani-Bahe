import 'package:dokani_bahe/Local%20Model/Order/data.dart';
import 'package:dokani_bahe/Local%20Model/Order/order_data.dart';
import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_container.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List images =[
    "https://www.startech.com.bd/image/cache/catalog/smart-watch/colmi/p81/p81-01-228x228.webp",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTegpGNFhKa177dAe-RRnN0vkxvCJHnOKl7aw&s",
    "https://www.startech.com.bd/image/cache/catalog/smart-watch/apple/watch-se-3/watch-se-3-midnight-228x228.webp",
    "https://api.ecom.longines.com/media/catalog/product/w/a/watch-collection-longines-spirit-zulu-time-1925-l3-803-5-53-6-fdc6b9-hero.png?w=2560"
  ];
  List<OrderData> pData = [];

  void getData(){
    pData.clear();
    pData.addAll(ProductData.pd);
    setState(() {

    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      animationDuration: Duration(microseconds: 100),
      child: Scaffold(
        appBar: MyAppbar(
          // toolbarHight: 70,
          title: MyText(text: "My Orders",fontSize: 18,fontWeight: FontWeight.bold,colors: Colors.black,),
          centerTitle: false,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
            SizedBox(width: 5,),
            Badge.count(
              count: 3,
              child: Icon(Icons.shopping_cart_outlined),
            ),
            SizedBox(width: 15,)
          ],

          bottom: TabBar(
             padding: EdgeInsets.all(10),
            isScrollable: false,
            labelPadding:EdgeInsets.all(5),
            tabs: [
              Tab(text: "All",),
              Tab(text: "Processing"),
              Tab(text: "Shipped"),
              Tab(text: "Delivered"),
              Tab(text: "Cancelled"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
               // final order = pData[index];
              itemCount: pData.length,
              itemBuilder: (context , index){

                return Card(
                  child: MyContainer(
                    pading: EdgeInsets.all(10),
                    height: 230,
                    width: MediaQuery.sizeOf(context).width,
                    borderRadius: BorderRadius.circular(10),
                    boxBorder: Border.all(width: 0.5,color: Colors.grey),
                    // colors: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(text: "Order ID",colors: Colors.grey,),
                            MyContainer(
                              height: 20,
                              width: 80,
                              borderRadius: BorderRadius.circular(5),
                              colors: Colors.red.shade100,
                              alignment: Alignment.center,
                              child: MyText(text:"${pData[index].delevery}",colors: Colors.red,),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 40,
                          children: [
                            MyText(text: "#${pData[index].id}",colors: Colors.black,fontWeight: FontWeight.bold,),
                            MyText(text: "20 May,2025",colors: Colors.grey,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          spacing: 40,
                          children: [
                            MyText(text: "${pData[index].itemCount} -Items"),
                            MyText(text: "৳${pData[index].price}",colors: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,),
                          ],
                        ),
                        SizedBox(
                          height: 70,
                          child: Row(
                            children: [
                              ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                // physics: ScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context , index){
                                  return Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: MyContainer(
                                      // pading: EdgeInsets.all(10),
                                      width: 70,
                                      height: 70,
                                      borderRadius: BorderRadius.circular(10),
                                      boxBorder: Border.all(width: 0.5,color: Colors.grey),
                                      image: DecorationImage(
                                        image: NetworkImage("${images[index]}"),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(text: "Payment Method",colors: Colors.grey,),
                            TextButton(onPressed: (){}, child: MyText(text: "View Details",colors: Colors.orange,))
                          ],
                        ),
                        Row(
                          children: [
                            MyText(text: "bKash",fontWeight: FontWeight.bold,)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            Center(child: MyText(text: "Processing",fontWeight: FontWeight.bold,colors: Colors.black,fontSize: 20,),),
            Center(child: MyText(text: "Shipped",fontWeight: FontWeight.bold,colors: Colors.black,fontSize: 20,),),
            Center(child: MyText(text: "Delivered",fontWeight: FontWeight.bold,colors: Colors.black,fontSize: 20,),),
            Center(child: MyText(text: "Cancelled",fontWeight: FontWeight.bold,colors: Colors.black,fontSize: 20,),),
          ],
        ),
      ),
    );
  }
}

