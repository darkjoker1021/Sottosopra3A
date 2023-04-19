import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ilsottosopra/news_detail.dart';
import 'package:ilsottosopra/widgets/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
      
       SizedBox(
        height:  MediaQuery.of(context).size.height * 0.3,
         child: CarouselSlider.builder(itemCount: 4, itemBuilder: (context, index, realIndex) {
           return Container(
             child: Image.asset("lib/assets/fiori.jpg", width: 300,),
           );
              
         }, 
         options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
       
          ),
          ),
       ),

        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            
          return GestureDetector(onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewsDetail()),
  );
}, child: News());
        },)
        ),
      ],
    ));
  }
}