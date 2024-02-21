import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';

class NewsServices{
  final Dio dio;
  NewsServices(this.dio);
   Future<List<NewsModel>> getNews() async{
    Response response = await dio.get('https://newsdata.io/api/1/news?apikey=pub_386146bc6172849801f6dd1197043e2a55552&country=eg&language=ar'); 
    Map<String,dynamic> jsonData = response.data;
    // print(jsonData);
    // print(jsonData['totalResults']);
    // print(jsonData['results']);

    // List<dynamic> results = jsonData['results'];
    // for(var result in results){
    //   print(result["image_url"]);
    // }
     
     //// convert list of maps to list of objects
     List<dynamic> resultsList = jsonData['results'];
     List<NewsModel> results = [];
     for(var result in resultsList){
      NewsModel news = NewsModel(
        newsImage: result['image_url'], 
        title: result['title'], 
        description: result['description']);
     results.add(news);
     }

// print(results);
return results;

  }
}