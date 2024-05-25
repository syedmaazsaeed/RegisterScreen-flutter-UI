import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                            image: AssetImage("img/signup.png"),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.16,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 60,
                          backgroundImage: AssetImage("img/download.png"),
                        )
                      ],
                    )),
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: w,
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Text(
                        "syedmaazsaeed@gmail.com",
                        style: TextStyle(fontSize: 17, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 210,
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
                      "Sign Out",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}