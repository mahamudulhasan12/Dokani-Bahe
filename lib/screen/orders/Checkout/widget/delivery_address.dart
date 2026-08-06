import 'package:flutter/material.dart';

import '../../../../custom widget/my_container.dart';
import '../../../../custom widget/my_text.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      pading: EdgeInsets.all(15),
      height: 170,
      width: MediaQuery.sizeOf(context).width,
      borderRadius: BorderRadius.circular(10),
      boxBorder: Border.all(width: 0.5,color: Colors.grey),
      child: Column(
        children: [
          Row(
            children: [
              MyText(text: "Delivery Address",fontWeight: FontWeight.bold,colors: Colors.black,fontSize: 15,)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined,size: 25,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(text: "Mahamudul Hasan",fontWeight: FontWeight.bold,),
                  MyText(text: "Taragonj , Rangpur"),
                  MyText(text: "Borirhat , Soyer kazi para"),
                  MyText(text: "+8801913242701"),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyText(text: "Change",fontWeight: FontWeight.bold,colors: Colors.orange,),
            ],
          )
        ],
      ),
    );
  }
}