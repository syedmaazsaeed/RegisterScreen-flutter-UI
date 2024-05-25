import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registration_page_firebase_auth/SignUpPage.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/loginimg.png"),
                          fit: BoxFit.cover)),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 23, right: 23),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Github",
                          style: TextStyle(
                              fontSize: 71, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Sign In to Your Account",
                          style:
                              TextStyle(fontSize: 23, color: Colors.grey[500]),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2))
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email ID ",
                                prefixIcon: Icon(Icons.email,
                                    color: const Color.fromARGB(255, 10, 9, 9)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 7,
                                    offset: Offset(1, 1),
                                    color: Colors.grey.withOpacity(0.2))
                              ]),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Pass Key ",
                                prefixIcon: Icon(Icons.password,
                                    color: const Color.fromARGB(255, 10, 9, 9)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.0)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(),
                            ),
                            Text(
                              "Forgot your Password?",
                              style: TextStyle(
                                  fontSize: 23, color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: w * 0.5,
                  height: h * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("img/loginbtn.png"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: w * 0.05),
                RichText(
                    text: TextSpan(
                        text: "Don\'t have an account?",
                        style: TextStyle(color: Colors.grey[500], fontSize: 20),
                        children: [
                      TextSpan(
                          text: " Create",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => SignUpPage()))
                    ]))
              ],
            ),
          ),
        ));
  }
}
