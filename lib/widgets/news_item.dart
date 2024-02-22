import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/views/news_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key,required this.newsItem});
  final NewsModel newsItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return NewsView(url: newsItem.newsLink,);
        }));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: newsItem.newsImage!= null && newsItem.newsImage!.isNotEmpty
        ? CachedNetworkImage(
            imageUrl: newsItem.newsImage!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          )
        : const Icon(Icons.error,
        color: Colors.red,
        ),
            // child: newsItem.newsImage != null ?Image.network(newsItem.newsImage!,
            // height: 200,
            // width: double.infinity,
            // fit: BoxFit.cover,
            // ):const Text('hello'),
          ),
          const SizedBox(height: 12,),
          Text(newsItem.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          ),
          const SizedBox(height: 8,),
          Text(newsItem.description,
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}