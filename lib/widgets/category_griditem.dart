import 'package:animateddemo/models/category.dart';
import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onselectcategory});
  final Category category;
  final void Function() onselectcategory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onselectcategory,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(child: Text(category.title)),
      ),
    );
  }
}
