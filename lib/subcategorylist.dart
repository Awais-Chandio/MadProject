
import 'package:flutter/material.dart';
class SubcategoryScreen extends StatelessWidget {
  final List<String> subcategories;

  SubcategoryScreen({required this.subcategories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subcategories'),
      ),
      body: ListView.builder(
        itemCount: subcategories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subcategories[index]),
            // You can add more functionality for each subcategory if needed.
          );
        },
      ),
    );
  }
}

