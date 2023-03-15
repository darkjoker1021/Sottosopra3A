import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 300,
          child: Column(children: [
            Container(
              child: Image.asset("lib/assets/fiori.jpg", width: 300,),
            )
          ]),
          )
        );
  }
}