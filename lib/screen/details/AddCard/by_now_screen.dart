import 'package:dokani_bahe/custom%20widget/my-textfeild.dart';
import 'package:dokani_bahe/custom%20widget/my_appbar.dart';
import 'package:dokani_bahe/custom%20widget/my_button.dart';
import 'package:dokani_bahe/main.dart';
import 'package:flutter/material.dart';

import '../../../custom widget/my_container.dart';
import '../../../custom widget/my_text.dart';
import 'cash_menoy.dart';

class ByNowScreen extends StatefulWidget {
  const ByNowScreen({super.key});

  @override
  State<ByNowScreen> createState() => _ByNowScreenState();
}

class _ByNowScreenState extends State<ByNowScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController description = TextEditingController();
  int i = 1;
  bool isChack = false;

  void addCount() {
    setState(() {
      if (i < 20) {
        i++;
      }
    });
  }

  void subCount() {
    setState(() {
      if (i > 1) {
        i--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: MyText(
          text: "Selected",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          colors: Colors.white,
        ),
        centerTitle: true,
        toolbarHeight: 70,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: Stack(
            children: [
              MyContainer(
                pading: EdgeInsets.all(15),
                height: 100,
                width: MediaQuery.sizeOf(context).width,
                colors: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: (isChack),
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChack = newValue ?? false;
                            });
                          },
                          focusColor: Colors.orange,
                          checkColor: Colors.white,
                          activeColor: Colors.orange,
                        ),
                        MyText(
                          text: "Select All",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ],
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Card(
            child: MyContainer(
              pading: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width,
              height: 140,
              borderRadius: BorderRadius.circular(10),
              boxBorder: Border.all(width: 0.5, color: Colors.grey),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Checkbox(
                      value: isChack,
                      onChanged: (bool? value) {
                        setState(() {
                          isChack = value ?? false;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: Colors.orange,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: MyContainer(
                      width: 70,
                      height: 70,
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCvyXfEp3S4ZyzfhZ4ptzI1RUW1TM9SJqW9w&s",
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                          text: "Product Name",
                          overflow: TextOverflow.ellipsis,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        MyText(text: "BDT 830", fontWeight: FontWeight.bold),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            addCount();
                          },
                          icon: Icon(Icons.add),
                          padding: EdgeInsets.zero,
                        ),
                        MyText(text: "${i}", fontWeight: FontWeight.bold),
                        IconButton(
                          onPressed: () {
                            subCount();
                          },
                          icon: Icon(Icons.minimize),
                          padding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Card(
        child: MyContainer(
          pading: EdgeInsets.all(10),
          width: MediaQuery.sizeOf(context).width,
          height: 100,
          alignment: Alignment.center,
          borderRadius: BorderRadius.circular(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: "Total (Selected)",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    colors: Colors.grey,
                  ),
                  MyText(
                    text: "BDT 540.00",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    colors: Colors.orange,
                  ),
                ],
              ),
              MyButton(
                height: 50,
                width: 100,
                borderRadius: BorderRadius.circular(20),
                colors: Colors.orange,
                child: MyText(text: "Checkout", fontWeight: FontWeight.bold),
                onTab: () {
                  setState(() {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: MyAppbar(
                            title: MyText(
                              text: "Checkout",
                              fontWeight: FontWeight.bold,
                              colors: Colors.white,
                              fontSize: 18,
                            ),
                            centerTitle: false,
                            backgroundColor: Colors.orange,
                          ),
                          body: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.all(10),
                            scrollDirection: Axis.vertical,
                            children: [
                              SizedBox(height: 10),
                              MyTextfeild(
                                controller: name,
                                hintText: "Enter Your Name",
                                outlinBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1),
                                ),
                                inputType: TextInputType.text,
                                prefixIcon: Icon(Icons.person),
                              ),
                              SizedBox(height: 10),
                              MyTextfeild(
                                controller: phone,
                                hintText: "Enter Your Phone or Email",
                                outlinBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1),
                                ),
                                inputType: TextInputType.number,
                                prefixIcon: Icon(Icons.phone),
                              ),
                              SizedBox(height: 10),
                              MyTextfeild(
                                controller: description,
                                hintText: "Description",
                                outlinBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(width: 1),
                                ),
                                inputType: TextInputType.text,
                                prefixIcon: Icon(Icons.details),
                                maxLine: 2,
                              ),
                              SizedBox(height: 10),
                              CircleAvatar(
                                radius: 20,
                                child: Image.asset("assets/images/shop.png"),
                              ),
                              MyText(
                                text: "Payment Method",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),

                              Row(
                                spacing: 10,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: MyContainer(
                                      pading: EdgeInsets.all(15),
                                      height: 60,
                                      width: 120,
                                      // colors: Colors.orange.shade100,
                                      boxBorder: Border.all(
                                        width: 0.5,
                                        color: Colors.orange,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        "https://cdn-icons-png.flaticon.com/128/6491/6491623.png",
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  InkWell(
                                    child: MyContainer(
                                      pading: EdgeInsets.all(15),
                                      height: 60,
                                      width: 120,
                                      // colors: Colors.orange.shade100,
                                      boxBorder: Border.all(
                                        width: 0.5,
                                        color: Colors.orange,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      alignment: Alignment.center,
                                      child: Image.network(
                                        "https://images.seeklogo.com/logo-png/27/1/bkash-logo-png_seeklogo-273684.png",
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              MyContainer(
                                pading: EdgeInsets.all(15),
                                height: 156,
                                width: MediaQuery.sizeOf(context).width,
                                colors: Colors.orange.shade100,
                                borderRadius: BorderRadius.circular(10),
                                child: Column(
                                  spacing: 2,
                                  children: [
                                    Cash_money(
                                      title: 'Sub Total ',
                                      price: '540.0',
                                    ),
                                    Cash_money(
                                      title: 'Sub Total ',
                                      price: '540.0',
                                    ),
                                    Cash_money(
                                      title: 'Sub Total ',
                                      price: '540.0',
                                    ),
                                    Divider(),
                                    Cash_money(
                                      title: 'Sub Total ',
                                      price: '540.0',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          bottomNavigationBar: MyContainer(
                            width: MediaQuery.sizeOf(context).width,
                            height: 50,
                            pading: EdgeInsets.only(left: 10, right: 10),
                            colors: Colors.orange,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MyButton(height: 30, width: 150,
                                  borderRadius: BorderRadius.circular(20),
                                  boxBorder: Border.all(width: 1,color: Colors.white),
                                  child: MyText(text: "CONFIRM ORDER",colors: Colors.white,fontWeight: FontWeight.bold,),
                                  onTab: (){

                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
