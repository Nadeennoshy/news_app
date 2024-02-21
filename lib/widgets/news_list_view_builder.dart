import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices(Dio()).getNews(category:widget.category);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future, 
      builder: ((context, snapshot) {
        if(snapshot.hasData){
          return NewsList(news: snapshot.data!);
        }
        else if(snapshot.hasError){
          return const Center(child: Text('oops, there was an error try later'));
        }
        else{
          return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
        }
            }));
    
    // isLoading?const SliverFillRemaining(child: Center(child: CircularProgressIndicator(),),):NewsList(news: news,);
  }
}