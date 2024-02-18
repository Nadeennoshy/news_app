import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset('assets/images/business.jpg',
          ),
        ),
        const SizedBox(height: 12,),
        const Text('titletitletitletitletitletitletitletitletitletitletitletitlettitletitletitletitletitletitletitletitleitletitletitletitletitletitletitletitletitletitletitletitle',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        ),
        const SizedBox(height: 4,),
        const Text('newsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrption',
        maxLines: 2,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        ),
        const SizedBox(height: 12,),
      ],
    );
  }
}