import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
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
    return isLoading?const SliverFillRemaining(child: Center(child: CircularProgressIndicator(),),):NewsList(news: news,);
  }
}