import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                Text(
                  '15 Aprile 2023',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                Text(
                  'Redazione',
                  style: TextStyle(color: Colors.grey),
                ),
                           ]),
              ),
               Container(
                 width: MediaQuery.of(context).size.width,
                 child: Image.asset(
                   "lib/assets/fiori.jpg",
                 ),),
                 Text('Federica Ceglia', style: TextStyle(fontSize: 30),)
                 
                 ])),);}}