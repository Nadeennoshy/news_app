import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // borderRadius: ,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(category.categoryImage))
        ),
        child:  Center(
          child: Text(category.categoryName,
          style: const TextStyle(color: Colors.white,
          fontSize: 18,
          ),
          ),
        ),
      ),
    );
  }
}