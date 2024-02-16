import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> categories = const[
    CategoryModel(categoryImage: 'assets/images/business.jpg', categoryName: 'Business'),
    CategoryModel(categoryImage: 'assets/images/entertainment.jpg', categoryName: 'Entertainment'),
    CategoryModel(categoryImage: 'assets/images/health.jpg', categoryName: 'Health'),
    CategoryModel(categoryImage: 'assets/images/science.jpg', categoryName: 'Science'),
    CategoryModel(categoryImage: 'assets/images/sports.jpg', categoryName: 'Sports'),
    CategoryModel(categoryImage: 'assets/images/technology.jpg', categoryName: 'Technology'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
          children: [
            TextSpan(text: 'News',
            style: TextStyle(
              color: Colors.black
            ),
            ),
            TextSpan(text: 'Cloud',
            style: TextStyle(
              color: Colors.orange,
            ),
            ),
          ],
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
          ),
          ),
      ),
      body: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context,index){
            return CategoryItem(category: categories[index]);
          }),
      ),
      // body: CategoryItem(),
    );
  }
}