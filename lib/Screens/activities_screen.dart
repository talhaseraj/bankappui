import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  final List<SalesData> chartData = [
    SalesData(8, 40),
    SalesData(10, 20),
    SalesData(17, 34),
    SalesData(20, 10),
    SalesData(24, 40)
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(gradient: backgroundColor),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    "ACTIVITIES",
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
                height: size.height * .22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: SfCartesianChart(
                    title: ChartTitle(text: "August 2022"),
                    legend: Legend(title: LegendTitle(text: "August 2022")),
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      // Renders line chart
                      LineSeries<SalesData, int>(
                          dataSource: chartData,
                          xValueMapper: (SalesData sales, _) => sales.value,
                          yValueMapper: (SalesData sales, _) => sales.amount)
                    ]),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: size.width * .35,
                    decoration: const BoxDecoration(
                        color: Color(0xffF75B45),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: const Text(
                      "COMPLETE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: size.width * .35,
                    decoration: const BoxDecoration(
                        color: Color(0xffD2D6D9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        )),
                    child: const Text(
                      "IN PROGRESS",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * .5,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(children: [
               logTile(color: Colors.yellow, title: "Congue Quisque", description: "Withdraw money", amount: 1200),
                logTile(color: Colors.blue, title: "Auctor Elit Ltd.", description: "Transfer Money", amount: 450),
                logTile(color: Colors.green, title: "Lactor Sit Amet est.", description: "Gas & Electricity Payment", amount: 239.5),
                logTile(color: Colors.amber, title: "Congue Quisque", description: "Withdraw money", amount: 300),
                logTile(color: Colors.blueAccent, title: "Auctor Elit Ltd.", description: "Transfer Money", amount: 1450),


                Padding(
                  padding:  EdgeInsets.only(top: size.width*.15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                    Icon(Icons.arrow_back_ios,color: Colors.blueAccent,),
                    CircleAvatar(backgroundColor: Color(0xffD2D6D9),child: Text("1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                    CircleAvatar(backgroundColor: Color(0xffF75B45),child: Text("2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                    CircleAvatar(backgroundColor: Color(0xffD2D6D9),child: Text("3",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                    CircleAvatar(backgroundColor: Color(0xffD2D6D9),child: Text("4",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
                    CircleAvatar(backgroundColor: Color(0xffD2D6D9),child: Text("5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),


                    Icon(Icons.arrow_forward_ios,color:Colors.blueAccent),
                  ],),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
  Widget logTile({required Color color,required String title,required String description,required double amount})
  {
    return  Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
               CircleAvatar(
                backgroundColor: color,
              ),
              const SizedBox(width: 5),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    title,
                    style:
                    TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(description,style:
                  const TextStyle(color: Colors.grey, fontSize: 14),),
                ],
              ),

            ],
          ),
           Text("-\$$amount",style:
          const TextStyle(color: Colors.grey, fontSize: 14),),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.value, this.amount);

  final int value;
  final double amount;
}
