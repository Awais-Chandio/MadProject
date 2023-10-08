// ignore: unused_import
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/category_card.dart';
import 'package:flutter_project/doctor_card.dart';
import 'package:flutter_project/login.dart';
// ignore: unused_import
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:
          //appbar
          SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Text(
                            "Hello",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${FirebaseAuth.instance.currentUser!.displayName}",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
            
                      //profile picture
                      InkWell(
                        onTap: () {
                          FirebaseAuth.instance.signOut().whenComplete(() =>  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage())));
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(14)),
                          child: Icon(Icons.logout),
                        ),
                      )
                    ],
                  ),
                ),
            
                SizedBox(
                  height: 25,
                ),
            
                //card=> how do you feel?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Lottie.network(
                              "https://lottie.host/a6c41622-a992-4938-9f30-760180747837/jiK7xE2ZNs.json"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "How do you feel?",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Fill out your medical Card right now",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple[300],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                    child: Text(
                                  "Get Started",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //search bars
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "How can we help you?",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //horizantle listview => categories: dentist,surgeon etc...
                Container(
                  height: 80,
                  //color: Colors.deepPurple[100],
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryCard(
                          iconImagePath:
                              "https://cdn-icons-png.flaticon.com/128/11415/11415110.png",
                          Category: "Dentist", subcategories: [],
                        ),
                        CategoryCard(
                          iconImagePath:
                              "https://cdn-icons-png.flaticon.com/128/3056/3056829.png",
                          Category: "Surgeon", subcategories: [],

                        ),
                        CategoryCard(
                          iconImagePath:
                              "https://cdn-icons-png.flaticon.com/128/7505/7505915.png",
                          Category: "Pharmacist", subcategories: [],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
            
                //doctors list
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Doctor List",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
            
                Container(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
