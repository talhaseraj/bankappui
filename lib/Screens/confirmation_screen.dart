import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:pin_keyboard/pin_keyboard.dart';
import '../global_colors.dart';
class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  TextEditingController pinController=TextEditingController();
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
                        "CONFIRMATION",
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
                width: size.width*.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text("SENDING MONEY",style: const TextStyle(color: Colors.blue),),
                              const Text(
                                "\$4,180.20",
                                style: TextStyle(
                                    color: Color(0xffF75B45),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 37),


                ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [Text("TO ",style: TextStyle(color: Colors.blue),),Text("LOREM BANK ACCOUNT",style: TextStyle(
                                  color: Color(0xffF75B45),
                                  fontWeight: FontWeight.bold,
                                  ),)],)
                            ],
                          ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: size.height * .55,
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Column(children: [
                Text(

                  "Please Enter Your Pin To Confirm Your Transaction",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff006F88),
                    fontSize: size.width * .05,
                    fontWeight: FontWeight.bold,
                    fontFamily: "MontRegular",
                  ),
                ),
                const SizedBox(height: 20,),
                Pinput(

                  defaultPinTheme: PinTheme(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff98DDE4),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffF75B45),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  followingPinTheme: PinTheme(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff98DDE4),

                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  errorPinTheme: PinTheme(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff98DDE4),

                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  autofocus: true,
                  enabled: true,
                  readOnly: true,

                  controller: pinController,
                  length: 6,

                  onCompleted: (pin) => print(pin),
                ),
                const SizedBox(height: 20,),

                PinKeyboard(

                  length: 6,
                  enableBiometric: false,
                  iconBiometricColor: Colors.blue[400],
                  onChange: (pin) {print(pin);

                  setState(() {
                    pinController.text=pin;
                  });},
                  onConfirm: (pin) {},
                  onBiometric: () {},
                )
              ],),
            ),

          ]),
        ),
      ),
    );
  }
}
