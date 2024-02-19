import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/images/business.jpg',
          fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 12,),
        const Text('titletitletitletitletitletitletitletitletitletitletitletitlettitletitletitletitletitletitletitletitleitletitletitletitletitletitletitletitletitletitletitletitle',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        ),
        const SizedBox(height: 8,),
        const Text('newsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrptionnewsdescrption',
        maxLines: 2,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}