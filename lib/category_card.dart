import 'package:flutter/material.dart';
import 'package:flutter_project/subcategorylist.dart';

class CategoryCard extends StatelessWidget {
  final String iconImagePath;
  final String Category;
  final List<String> subcategories; // Add a list of subcategories

  CategoryCard({
    required this.iconImagePath,
    required this.Category,
    required this.subcategories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: () {/*
          // Navigate to the SubcategoryScreen and pass the subcategories data
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SubcategoryScreen(subcategories: subcategories),
            ),
          );

        */},
        
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image(
                image: NetworkImage(
                  iconImagePath,
                ),
                height: 40,
              ),
              SizedBox(width: 20),
              Text(Category),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: unused_import
/*import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  //const CategoryCard({super.key});
  final String iconImagePath;
  final String Category;
  CategoryCard({required this.iconImagePath,required this.Category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        decoration: BoxDecoration(color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(12)
        ),
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image(
                image: NetworkImage(
                  iconImagePath,
                ),
                height: 40,
              ),
              SizedBox(width: 20,),
              Text(Category),
            ],
          )),
    );
  }
}
*/
