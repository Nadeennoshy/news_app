import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key,required this.news});
  final List<NewsModel> news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index){
        return NewsItem(newsItem: news[index],);
      }),);


    // return ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   itemCount: 15,
    //   itemBuilder: (BuildContext context,index){
    //     return const NewsItem();
    //   });
  }
}