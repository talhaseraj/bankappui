import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'package:get/get.dart';

class YourCardsScreen extends StatefulWidget {
  const YourCardsScreen({Key? key}) : super(key: key);

  @override
  State<YourCardsScreen> createState() => _YourCardsScreenState();
}

class _YourCardsScreenState extends State<YourCardsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(gradient: backgroundColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Your Cards",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 40,
                    ),
                    Icon(Icons.credit_card, size: 200, color: Colors.white),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * .55,
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          "Your Name",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Your Name",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          "Card Number",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Insert Your Card Number",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          "Expired Date",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                      ),
                      Row(
                        children: const [
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blueAccent,
                                  ),
                                  hintText: "Day",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 4,
                            child: SizedBox(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blueAccent,
                                  ),
                                  hintText: "Month",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blueAccent,
                                  ),
                                  hintText: "Year",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          "Password",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "**********",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          "Phone Number",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 12),
                        ),
                      ),
                      Row(
                        children: const [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blueAccent,
                                  ),
                                  hintText: "+44",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 4,
                            child: SizedBox(
                              height: 35,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "* ",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            SizedBox(
                                width: size.width * .7,
                                child: const Text(
                                  "Nunc Faucibus a Pellentesque sit amet   porttitor eget dolor morbi non.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: MaterialButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          color: const Color(0xffF75B45),
                          onPressed: () {},
                          child: const Text(
                            "LINK CARD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
