import 'package:flutter/material.dart';
import 'package:flutter_application_1/Movie_Ticket_Booking_App_UI_Design/Screens/Booking_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  List<String> movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];
  List<String> movies2 = [
    "Shazam 2",
    "Aquaman 2",
    "Ant Man 3",
    "GOTG Vol 3",
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.sort, size: 32, color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "DP Cineplex",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Row(
            children: [
              Icon(Icons.search,color: Colors.white, size: 28),
              SizedBox(width: 5),
              Icon(Icons.filter_alt_outlined,color: Colors.white ,size: 28),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Playing Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xfff7d300),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 365,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingScreen(movie: movies[index] ,),));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies[index]}.jpg",
                              height: 260,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Color(0xfff7d300),
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Color(0xfff7d300),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.access_time_filled_rounded,
                                    color: Colors.white60,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "2H 30M",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Color(0xff2f3236),
                    ),
                    child: const Text(
                      "Coming Soon",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xfff7d300),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 295,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/${movies2[index]}.jpg",
                              height: 240,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movies2[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ],
                    ),
                  ),
                      ]
                    )
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
