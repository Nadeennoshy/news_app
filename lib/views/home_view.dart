import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
          children: [
            TextSpan(text: 'News',
            style: TextStyle(
              color: Colors.black
            ),
            ),
            TextSpan(text: 'Cloud',
            style: TextStyle(
              color: Colors.orange,
            ),
            ),
          ],
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
          ),
          
          ),
      ),
    );
  }
}