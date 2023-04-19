import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "lib/assets/fiori.jpg",
            ),
          ),
          Row(
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
              Icon(Icons.chat_bubble_outline),
              Text(
                '0',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Text(
            'Guido è il GOAT',
            style: TextStyle(fontSize: 20),
          ),
          Text('non bisogna argomentare'),
        ],
      ),
    );
  }
}
