import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
          return  CategoryView(category: category.categoryName,);
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 170,
          height: 95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // borderRadius: ,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.categoryImage))
          ),
          child:  Center(
            child: Text(category.categoryName,
            style: const TextStyle(color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
      ),
    );
  }
}