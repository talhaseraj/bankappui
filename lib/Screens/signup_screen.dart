import 'package:dezzex/global_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Controller controller = Get.put(Controller());
  TextEditingController usernameController = TextEditingController();
  TextEditingController bankAccountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passVis = true;
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(gradient: backgroundColor),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Sign up to your bank account",
                style: TextStyle(
                    color: Color(0xff17839F),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    keyboardType: TextInputType.name,
                    controller: usernameController,
                    decoration: const InputDecoration(
                        hintText: "Your Name",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    controller: bankAccountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: "Bank Account",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        hintText: "Mobile phone number",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder())),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: passVis,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passVis = !passVis;
                              });
                            },
                            child: Icon(passVis
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        hintText: "Password",
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: const OutlineInputBorder())),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: size.width * .7,
                  child: const Text(
                    "Use 6 Characters with a mix of numbers and letters",
                    style: TextStyle(color: Colors.blueAccent),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * .8,
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          value: checkBox,
                          onChanged: (value) {
                            setState(() {
                              checkBox = value!;
                            });
                          }),
                    ),
                    SizedBox(
                        width: size.width * .65,
                        child: const Text(
                          "By Signing Up, you agree to Bank's Term of Use & Privacy Policy",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * .8,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        minWidth: size.width * .35,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        color: const Color(0xffF75B45),
                        onPressed: () {
                          if (usernameController.text.isEmpty) {
                            Get.snackbar("Error", "Please Enter Username");
                          } else if (bankAccountController.text.isEmpty) {
                            Get.snackbar("Error", "Please Enter Bank Account");
                          } else if (phoneNumberController.text.isEmpty) {
                            Get.snackbar(
                                "Error", "Please Enter Mobile Phone Number");
                          } else if (emailController.text.isEmpty) {
                            Get.snackbar("Error", "Please Enter Email");
                          } else if (passwordController.text.isEmpty) {
                            Get.snackbar("Error", "Please Enter Password");
                          } else if (!checkBox) {
                            Get.snackbar(
                                "Error", "Please Agree Terms and conditions");
                          } else {
                            controller.register(
                                password: passwordController.text,
                                username: usernameController.text,
                                email: emailController.text,
                                bankaccount: bankAccountController.text,
                                phonenumber: phoneNumberController.text);
                          }
                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3),
                        ),
                      ),
                      const Text("or"),
                      MaterialButton(
                        minWidth: size.width * .35,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff17839F)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        color: Colors.white,
                        onPressed: () {

                          Get.back();
                        },
                        child: const Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Color(0xff17839F),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Alread Signed Up? ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff007A9B),
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
