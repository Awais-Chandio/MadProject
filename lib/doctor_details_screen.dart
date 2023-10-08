import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'doctor_card.dart';
class DoctorDetails extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;


  DoctorDetails({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctorName), // Set the doctor's name as the title
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400, maxHeight: 600), // Adjust the size as needed
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Doctor: $doctorName',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text('Profession: $doctorProfession'),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[300],
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Add more details as needed
            ],
          ),
        ),
      ),
    );
  }
}


// In doctor_details.dart
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doctor_card.dart';

class DoctorDetails extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorDetails({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return 
                  Scaffold(appBar: AppBar(title: Text("details")),
                  body: Container(
                    height: 260,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                    DoctorCard(
                      doctorImagePath:
                          "https://thumbs.dreamstime.com/b/indian-doctor-mature-male-medical-standing-isolated-white-background-handsome-model-portrait-31871541.jpg",
                      rating: "4.9",
                      doctorName: "Dr. Ganesh Gupta",
                      doctorProfession: "Therapist",
                    ),
                    DoctorCard(
                      doctorImagePath:
                          "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                      rating: "4.4",
                      doctorName: "Dr. Mitch Koko",
                      doctorProfession: "Psychologist",
                    ),
                    DoctorCard(
                      doctorImagePath:
                          "https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg",
                      rating: "5.0",
                      doctorName: "Dr.  Sherylen lon",
                      doctorProfession: "Surgeon",
                    ),
                      ],
                    ),
                                  ),
                  );
    // Implement the doctor details page UI here
  }
}
*/
