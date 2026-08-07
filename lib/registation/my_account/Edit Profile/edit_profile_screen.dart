import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/custom%20widget/my_text.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController birthday = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController postalCode = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> selectDate() async {
    DateTime? pickDate = await showDatePicker(
      context: context,
      // initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2020),
    );
    if (pickDate != null) {
      setState(() {
        birthday.text = "${pickDate.day}/${pickDate.month}/${pickDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        title: MyText(
          text: "Edit Profile",
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          MyContainer(
            pading: EdgeInsets.only(left: 10, right: 10),
            width: MediaQuery.sizeOf(context).width,
            height: 120,
            child: Row(
              spacing: 15,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/024/183/502/small/male-avatar-portrait-of-a-young-man-with-a-beard-illustration-of-male-character-in-modern-color-style-vector.jpg",
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: -1,
                      child: CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
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
              ],
            ),
          ),
          Divider(thickness: 2, color: Colors.grey.shade300),
          SizedBox(height: 5),
          MyText(text: "Personal Information", fontWeight: FontWeight.bold),
          SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(text: "Full Name", fontSize: 12, colors: Colors.grey),
              SizedBox(height: 5),
              MyTextfeild(
                controller: phone,
                isDense: true,
                hintText: "+8801913242701",
                inputType: TextInputType.number,
              ),
              MyText(text: "phone", fontSize: 12, colors: Colors.grey),
              SizedBox(height: 5),
              MyTextfeild(
                controller: phone,
                isDense: true,
                hintText: "+8801913242701",
                inputType: TextInputType.number,
              ),
              MyText(text: "Email", fontSize: 12, colors: Colors.grey),
              SizedBox(height: 5),
              MyTextfeild(
                controller: email,
                isDense: true,
                hintText: "mahamudulhasan@gmail.com",
              ),
              MyText(text: "Date of Birth", fontSize: 12, colors: Colors.grey),
              SizedBox(height: 5),
              MyTextfeild(
                controller: birthday,
                onTab: selectDate,
                readOnly: true,
                isDense: true,
                hintText: "22 February 2008",
                suffiIcon: Icon(Icons.calendar_month),
              ),
              SizedBox(height: 7),
              MyText(text: "Address", fontWeight: FontWeight.bold),
              MyText(text: "Full Address", fontSize: 12, colors: Colors.grey),
              SizedBox(height: 5),
              MyTextfeild(
                controller: address,
                isDense: true,
                hintText: "Rangpur Division",
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            spacing: 5,
            children: [
              SizedBox(height: 5),
              Expanded(
                child: MyTextfeild(
                  controller: city,
                  isDense: true,
                  label: MyText(text: "City"),
                  hintText: "Rangpur",
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: MyTextfeild(
                  controller: postalCode,
                  label: MyText(text: "Post Code"),
                  isDense: true,
                  hintText: "1230",
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          MyText(text: "Country", fontSize: 12, colors: Colors.grey),
          SizedBox(height: 5),
          MyTextfeild(
            controller: country,
            isDense: true,
            hintText: "Bangladesh",
            suffiIcon: Icon(Icons.keyboard_arrow_down_outlined),
          ),
          SizedBox(height: 8),
          MyText(text: "Account information", fontSize: 15, colors: Colors.black,fontWeight: FontWeight.bold,),
          SizedBox(height: 5),
          MyTextfeild(
            controller: password,
            isDense: true,
            hintText: "Passworld",
            suffiIcon: Icon(Icons.arrow_forward_ios_outlined),
          ),
          SizedBox(height: 10,),
          MyButton(
            onTab: (){

            },
            child: MyText(text: "Save Changes",colors: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 2,),
          )
        ],
      ),
    );
  }
}
