import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list.dart';

import '../widgets/categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 13),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesList(),),
            SliverToBoxAdapter(child: SizedBox(height: 12,),),
            SliverToBoxAdapter(child: NewsList(),),
          ],
        ),
      ),
      // body: CategoriesList(),
      // body: NewsList(),
      // body: SizedBox(
      //   height: 120,
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: categories.length,
      //     itemBuilder: (BuildContext context,index){
      //       return CategoryItem(category: categories[index]);
      //     }),
      // ),
      // body: CategoryItem(),
    );
  }
}