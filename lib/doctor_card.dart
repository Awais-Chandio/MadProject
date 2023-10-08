// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_project/doctor_details_screen.dart';
class DoctorCard extends StatelessWidget {
  //const DoctorCard({super.key});
final String doctorImagePath;
final String rating;
final String doctorName;
final String doctorProfession;
DoctorCard({required this.doctorImagePath,required this.rating,required this.doctorName,required this.doctorProfession});
  @override
  Widget build(BuildContext context) {
    return // In doctor_card.dart
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DoctorDetails(
          doctorImagePath: doctorImagePath,
          rating: rating,
          doctorName: doctorName,
          doctorProfession: doctorProfession,
        ),
      ),
    );
  },
  child: Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12),
                ),
              child: Column(children: [
                //doctor picture
                ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Image(image: NetworkImage(doctorImagePath),
                  height: 100,
                  ),
                ),
                SizedBox(height: 10,),
                Row(children: [
    
                  //doctor rating
                  Icon(Icons.star,color: Colors.yellow[300],),
                  Text(rating,style: TextStyle(fontWeight: FontWeight.bold),),
                ],),
                SizedBox(height: 10,),
    
                //doctor name
                Text(doctorName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                SizedBox(height: 5,),
    
                //doctor type 
                Text(doctorProfession+ "7 y.e. ")
    
              ],),
              ),
    ));
 
    // Existing DoctorCard code
  


    /*Padding(
      padding: const EdgeInsets.only(left: 25,bottom: 25),
      child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12),
                ),
              child: Column(children: [
                //doctor picture
                ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Image(image: NetworkImage(doctorImagePath),
                  height: 100,
                  ),
                ),
                SizedBox(height: 10,),
                Row(children: [
    
                  //doctor rating
                  Icon(Icons.star,color: Colors.yellow[300],),
                  Text(rating,style: TextStyle(fontWeight: FontWeight.bold),),
                ],),
                SizedBox(height: 10,),
    
                //doctor name
                Text(doctorName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                SizedBox(height: 5,),
    
                //doctor type 
                Text(doctorProfession+ "7 y.e. ")
    
              ],),
              ),
    );
    */

  }
}