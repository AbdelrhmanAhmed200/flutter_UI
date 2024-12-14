import 'package:flutter/material.dart';
import 'package:flutter_application_1/Movie_Ticket_Booking_App_UI_Design/Screens/Home_Screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"), // Correct path
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "DP Cineplex" ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20,),
            const Text("Grab your tickets now", 
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
            ),
            const SizedBox(height:50),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15 ,horizontal: 25),
                decoration:BoxDecoration(
                  color: Color(0xfff7d300).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10)
                ) ,
                child: Text("Get started", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
