import 'package:flutter/material.dart';
import 'package:ilsottosopra/widgets/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return News();
        },
        ),
      );
  }
}