import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global_colors.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
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
                      "Transfer",
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
                height: size.height * .80,
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const SizedBox(
                          height: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "From Bank Account",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: "00 123 456",
                            hintStyle: TextStyle(color: Colors.blueAccent),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "To Bank Account",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_down,color: Colors.blueAccent,),
                            hintText: "Select",
                            hintStyle: TextStyle(color: Colors.blueAccent),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Amount",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.keyboard_arrow_down,color: Colors.blueAccent,),
                                  hintText: "\$",
                                  hintStyle: TextStyle(color: Colors.blueAccent),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              flex: 7,
                              child: TextField(
                                textAlign: TextAlign.end,

                                decoration: InputDecoration(

                                  hintText: "2,195.00",
                                  hintStyle: TextStyle(color: Colors.blueAccent),
                                  contentPadding: EdgeInsets.only(left: 10,right: 10),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Messages",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(

                            hintStyle: TextStyle(color: Colors.blueAccent),
                            contentPadding: EdgeInsets.only(left: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),

                        const SizedBox(height: 35,),
                        SizedBox(
                          width: size.width * .8,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MaterialButton(
                                  minWidth: size.width*.30,

                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(50))),
                                  color: const Color(0xffF75B45),
                                  onPressed: () {},
                                  child: const Text(
                                    "SEND",
                                    style:  TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 3),
                                  ),

                                ),
                                const Text("or"),
                                MaterialButton(
                                  minWidth: size.width*.30,
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Color(0xff17839F)),
                                      borderRadius: BorderRadius.all(Radius.circular(50))),
                                  color:  Colors.white,
                                  onPressed: () {},
                                  child: const Text(
                                    "CANCEL",
                                    style:  TextStyle(
                                        color: Color(0xff17839F),
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 3),
                                  ),

                                ),
                              ]),
                        ),

                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
