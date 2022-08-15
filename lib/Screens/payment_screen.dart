import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'dashboard_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
                      "PAYMENT",
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
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(10),
                height: size.height * .3,
                width: size.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: QrImage(
                  data: "Test By Talha Seraj",
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: size.height * .45,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5),
                      child: Text(
                        "AMOUNT",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 15, letterSpacing: 1),
                      ),
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text("USD",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        letterSpacing: 2,
                                        fontSize: 20)),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                            const Text(
                              "1,240.00",
                              style: TextStyle(
                                  color: Color(0xffF75B45),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 5, top: 15),
                      child: Text(
                        "FROM BANK ACCOUNT",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 15, letterSpacing: 1),
                      ),
                    ),
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text("B8B",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        letterSpacing: 2,
                                        fontSize: 20)),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.blueAccent,
                                ),
                              ],
                            ),
                            const Text(
                              "00 123 456",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        color: const Color(0xffF75B45),
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text(
                          "CONFIRM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Can't scan the QR Code?",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Try ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text("Barcode Bar",style: TextStyle(color: Colors.blue,fontSize: 15,decoration: TextDecoration.underline),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
