import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (BuildContext context,index){
        return const NewsItem();
      });
  }
}