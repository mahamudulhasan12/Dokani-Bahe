import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class SliderHeader extends StatelessWidget {
  const SliderHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 120,
        // initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        viewportFraction: 0.95,
        enlargeFactor: 0.1,
        // aspectRatio: 2.0
        // aspectRatio: 16/9
      ),
      items:
      [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKw1pvCw67fg_FRO7xTLPzMt5Q9KfIsB-x8g&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2XdFrM_DOhJ3RE5zgY19EQY2vSXGCZG9G8g&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXR3IpzXwPcFFFjDBwxYrj-gTu-dQaF4TwSQ&s",
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                MyContainer(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  // height: 120,
                  width: MediaQuery.sizeOf(context).width,
                  borderRadius: BorderRadius.circular(10),
                  colors: Colors.grey,
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      fit: BoxFit.fill,
                      "${i}",
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned(
                  top:5,
                  left:15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 0.2,
                    children: [
                      MyText(
                        text: "Summer Sale",
                        // fontWeight: FontWeight.bold,
                        colors: Colors.white,
                      ),
                      MyText(
                        text: "UP To 70% OFF".toUpperCase(),
                        fontWeight: FontWeight.bold,
                        colors: Colors.white,
                        fontSize: 20,
                      ),
                      MyText(
                        text: "Summer Sale",

                        colors: Colors.white,
                      ),
                      InkWell(
                        onTap: (){

                        },
                        child: MyContainer(
                          height: 28,
                          width: 80,
                          colors: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          alignment: Alignment.center,
                          child: MyText(text: "Shop Now",fontSize: 12,fontWeight: FontWeight.bold,colors: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}