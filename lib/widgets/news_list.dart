import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsList extends StatefulWidget {
  const NewsList({super.key});

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<NewsModel> news = [];
  bool isLoading = true;
  @override
  void initState(){
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    news = await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):SliverList(
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