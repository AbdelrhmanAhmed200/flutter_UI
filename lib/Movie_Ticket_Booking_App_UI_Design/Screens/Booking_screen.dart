import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  final String movie;
  BookingScreen({required this.movie});

  final List<String> formats = [
    "2D",
    "3D",
    "4DX",
    "IMAX",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color(0xff212429),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Image Section
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage("images/${movie}.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.6,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        movie,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    // Format Section
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Format:",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFF7D300),
                              fontWeight: FontWeight.w600),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 25,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: formats.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: index == 1
                                          ? Color(0xFFF7D300)
                                          : Color(0xFF212429),
                                      borderRadius: BorderRadius.circular(5),
                                      border: index != 1
                                          ? Border.all(color: Colors.white60)
                                          : null,
                                    ),
                                    child: Center(
                                      child: Text(
                                        formats[index],
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
// Selected Date Section
const Text(
  "Selected Date",
  style: TextStyle(
    fontSize: 16,
    color: Colors.white70,
    fontWeight: FontWeight.w600,
  ),
),
const SizedBox(height: 3),
SizedBox(
  height: 70,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 6,
    itemBuilder: (context, index) {
      // Generate weekdays dynamically
      final List<String> weekdays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
      return InkWell(
        
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: index == 1
                ? Color(0xFFF7D300) // Highlight selected day
                : Color(0xFF212429),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Dynamic weekday (e.g., Mon, Tue)
              Text(
                weekdays[index % weekdays.length],
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // Dynamic date (e.g., 8, 9, etc.)
              Text(
                "${index + 8}",
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
    },
  ),
),
SizedBox(height: 5,),
Row(
  children: [
    Icon(Icons.location_on, color: Color(0xFFF7D300),),
    Text("City Complex Cinema", style: TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w600,
    ),
    ),
    Spacer(),
    Text("Hall A", 
    style: TextStyle(
      color: Colors.white70,

    ),
    )

  ],
),
SizedBox(height:10),
const Text(
  "Select Time",
  style: TextStyle(
    fontSize: 16,
    color: Colors.white70,
    fontWeight: FontWeight.w600,
  ),
),
const SizedBox(height: 3),
SizedBox(
  height: 70,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 6,
    itemBuilder: (context, index) {
      // Generate weekdays dynamically
      final List<String> weekdays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
      return InkWell(
        
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20 ),
          padding: const EdgeInsets.symmetric(horizontal: 10, ),
          decoration: BoxDecoration(
            color: index == 1
                ? Color(0xFFF7D300) // Highlight selected day
                : Colors.white24,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              "${index + 8} :30 AM",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    },
  ),
),
SizedBox(height: 10,),
Row(
  children: [
    Icon(Icons.location_on, color: Color(0xFFF7D300),),
    Text("City Complex Cinema", style: TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w600,
    ),
    ),
    Spacer(),
    Text("Hall B", 
    style: TextStyle(
      color: Colors.white70,

    ),
    )

  ],
),
SizedBox(height:1),
const Text(
  "Select Time",
  style: TextStyle(
    fontSize: 16,
    color: Colors.white70,
    fontWeight: FontWeight.w600,
  ),
),
const SizedBox(height: 2),
SizedBox(
  height:70,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 6,
    itemBuilder: (context, index) {
      // Generate weekdays dynamically
      final List<String> weekdays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
      return InkWell(
        
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 20 ),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5 ),
          decoration: BoxDecoration(
            color: index == 1
                ? Color(0xFFF7D300) // Highlight selected day
                : Colors.white24,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              "${index + 8} :30 AM",
              style: const TextStyle(
                fontSize: 17,
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    },
  ),
  
),
SizedBox(height: 5,),
Material(
  color: Color(0xFFF7D300).withOpacity(0.9),
  borderRadius: BorderRadius.circular(10),
  child: InkWell(
    onTap: () {
      
    },
    child: Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text("Book Ticket", style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    ),
  ),
  
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
