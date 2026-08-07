import 'package:dokani_bahe/registation/my_account/Edit%20Profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';

class ProfielSection extends StatelessWidget {
  const ProfielSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      pading: EdgeInsets.only(left: 10,right: 10),
      width: MediaQuery.sizeOf(context).width,
      height: 120,
      child: Row(
        spacing: 10,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://static.vecteezy.com/system/resources/thumbnails/024/183/502/small/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg",
            ),
          ),
          Column(
            spacing: 3,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                text: "Md Mahamudul Hasan",
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              MyText(text: "+8801913242701", fontWeight: FontWeight.bold),
              MyText(text: "mahamudulhasn@gmail.com"),
            ],
          ),
          Spacer(),
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
              },
              icon: Icon(Icons.arrow_forward_ios_outlined, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
