import 'package:dio/dio.dart';

class NewsServices{
  final Dio dio;
  NewsServices(this.dio);
  getNews() async{
    Response response = await dio.get('https://newsdata.io/api/1/news?apikey=pub_386146bc6172849801f6dd1197043e2a55552&category=sports&country=eg&language=ar'); 
    Map<String,dynamic> jsonData = response.data;
    print(jsonData);
    print(jsonData['totalResults']);

  }
}