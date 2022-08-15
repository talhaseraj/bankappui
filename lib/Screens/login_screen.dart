import 'package:dezzex/Screens/dashboard_screen.dart';
import 'package:dezzex/Screens/signup_screen.dart';
import 'package:dezzex/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                          color: Color(0xffF75B45), size: 90),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "B8B BANK",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "MOBILE APP",
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff007A9B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: size.width * .7,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Username or Email",
                          hintStyle: TextStyle(color: Color(0xff82BDC2)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: const TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Color(0xff82BDC2)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      color: const Color(0xffF75B45),
                      onPressed: () {
                        Get.to(const DashboardScreen(),transition: Transition.cupertino);
                      },
                      child: const Text(
                        "SIGN IN",
                        style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Forgot Password?",
                      style:  TextStyle(
                        fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    const SizedBox(height: 4,),
                    InkWell(
                      onTap: (){
                        Get.to(const SignupScreen(),transition: Transition.cupertino);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text(
                            "New to Bank Apps? ",
                            style:  TextStyle(
                                fontSize: 16,
                                color: Color(0xff007A9B),
                              ),
                          ),
                          Text(
                        "Sign Up",
                        style:  TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            decoration: TextDecoration.underline),
                      ),],),
                    ),
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
