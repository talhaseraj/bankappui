import 'package:dezzex/Screens/activities_screen.dart';
import 'package:dezzex/Screens/expenses_screen.dart';
import 'package:dezzex/Screens/password_screen.dart';
import 'package:dezzex/Screens/payment_screen.dart';
import 'package:dezzex/Screens/transfer_screen.dart';
import 'package:dezzex/Screens/your_cards_screen.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                      "B8B BANK",
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
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Container(
                  height: size.height * .16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 100,
                        color: Color(0xffF75B45),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "KARINA BUYS",
                              style: TextStyle(
                                  color: Color(0xff0A7891),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "BALANCE",
                              style: TextStyle(
                                  letterSpacing: 1,
                                  color: Color(0xff0A7891),
                                  fontSize: 15),
                            ),
                            Text(
                              "\$4,180.20",
                              style: TextStyle(
                                  color: Color(0xffF75B45),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: size.height * .6,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          dashboardButton(
                              size: size,
                              icon: Icons.credit_card,
                              title: "Your Cards",
                              func: () {
                                Get.to(const YourCardsScreen(),
                                    transition: Transition.cupertino);
                              }),
                          dashboardButton(
                              size: size,
                              icon: Icons.currency_exchange,
                              title: "Transfer",
                              func: () {
                                Get.to(const TransferScreen(),
                                    transition: Transition.cupertino);
                              }),
                          dashboardButton(
                              size: size,
                              icon: Icons.qr_code_scanner,
                              title: "QR Payment",
                              func: () {
                                Get.to(const PaymentScreen(),
                                    transition: Transition.cupertino);
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          dashboardButton(
                              size: size,
                              icon: Icons.graphic_eq,
                              title: "Expenses",
                              func: () {
                                Get.to(const ExpensesScreen(),
                                    transition: Transition.cupertino);
                              }),
                          dashboardButton(
                              size: size,
                              icon: Icons.local_activity,
                              title: "Activities",
                              func: () {
                                Get.to(const ActivitiesScreen(),
                                    transition: Transition.cupertino);

                              }),
                          dashboardButton(
                              size: size,
                              icon: Icons.password,
                              title: "Password",
                              func: () {
                                Get.to(const PasswordScreen(),
                                    transition: Transition.cupertino);

                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          dashboardButton(
                              size: size,
                              icon: Icons.credit_card,
                              title: "Your Cards",
                              func: () {}),
                          dashboardButton(
                              size: size,
                              icon: Icons.credit_card,
                              title: "Your Cards",
                              func: () {}),
                          dashboardButton(
                              size: size,
                              icon: Icons.credit_card,
                              title: "Your Cards",
                              func: () {}),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dashboardButton(
      {required Size size,
      required IconData icon,
      required String title,
      required func}) {
    return InkWell(
      onTap: func,
      child: Column(
        children: [
          Container(
            height: size.height * .11,
            width: size.height * .11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: backgroundColor),
            child: Icon(
              icon,
              color: Colors.white,
              size: size.height * .07,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.blueAccent),
          )
        ],
      ),
    );
  }
}
