import 'package:flutter/material.dart';

import 'package:flutter_application_1/Movie_Ticket_Booking_App_UI_Design/Screens/Welcome_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff212429),
      ),
      home: WelcomeScreen(),

    );
  }
}
