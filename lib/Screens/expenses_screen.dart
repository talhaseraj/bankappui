import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global_colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
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
                      "EXPENSES",
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
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.white,
                ),
                child: SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                      interval: 10,
                      startAngle: 270,
                      endAngle: 270,
                      showTicks: false,
                      showLabels: false,
                      axisLineStyle: const AxisLineStyle(
                          thickness: 25, cornerStyle: CornerStyle.bothFlat),
                      pointers: const <GaugePointer>[
                        RangePointer(
                            value: 38,
                            width: 25,
                            color: Color(0xffF75B45),
                            enableAnimation: true,
                            cornerStyle: CornerStyle.bothFlat)
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: FittedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "38",
                                    style: TextStyle(
                                      color: const Color(0xff006F88),
                                      fontSize: size.width * .2,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "MontRegular",
                                    ),
                                  ),
                                  Text(
                                    "%",
                                    style: TextStyle(
                                      color: const Color(0xff006F88),
                                      fontSize: size.width * .1,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            angle: 90,
                            positionFactor: 0.15)
                      ])
                ]),
              ),
              const SizedBox(height: 30),
              Container(
                height: size.height * .45,
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "THIS WEEK",
                        style: TextStyle(
                          color: const Color(0xff006F88),
                          fontSize: size.width * .06,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MontRegular",
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      linearBar(size: size, day: "S", amount: 1200),
                      linearBar(size: size, day: "M", amount: 700),
                      linearBar(size: size, day: "T", amount: 179),
                      linearBar(size: size, day: "W", amount: 20),
                      linearBar(size: size, day: "T", amount: 0),
                      linearBar(size: size, day: "F", amount: 0),
                      linearBar(size: size, day: "S", amount: 0),

                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget linearBar({required Size size,required String day,required double amount})
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 1,
          child: Text(
            day,
            style: TextStyle(
              color: const Color(0xff006F88),
              fontSize: size.width * .06,
              fontFamily: "MontRegular",
            ),
          ),
        ),
        Expanded(flex: 9,
          child: Container(
            child:

            SfLinearGauge(

              showAxisTrack: true,
              showLabels: false,
              showTicks: false,
              minimum: 0.0,
              maximum: 100.0,
              orientation:
              LinearGaugeOrientation.horizontal,


              axisTrackStyle: const LinearAxisTrackStyle(
                color: Colors.grey,
                edgeStyle: LinearEdgeStyle.bothFlat,
                thickness: 2.0,
                borderColor: Colors.grey,

              ),
              barPointers:  [
                LinearBarPointer(
                  thickness: 20,
                  value: (amount/2000)*100,color: Color(0xffF75B45),
                  edgeStyle: LinearEdgeStyle.endCurve,
                )
              ],
            ),
            margin: const EdgeInsets.all(10),
          ),
        ),
        Expanded(
            flex: 3,
            child: Text(
              "\$$amount",style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.end,

            ))
      ],
    );
  }
}
