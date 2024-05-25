import 'package:flutter/material.dart';
import 'package:registration_page_firebase_auth/loginPage.dart'; // Import LoginPage
import 'package:registration_page_firebase_auth/signUpPage.dart'; // Import SignUpPage
import 'package:registration_page_firebase_auth/welcomePage.dart'; // Import WelcomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RegistrationScreen User Interface',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define navigation routes
      initialRoute: '/login', // Set initial route to LoginPage
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/welcome': (context) => WelcomePage(
              email: 'syedmaazsaeed@gmail.com',
            ),
      },
    );
  }
}
