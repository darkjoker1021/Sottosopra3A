import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:ilsottosopra/widgets/news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
      ImageSlideshow(
          indicatorColor: Colors.blue,
                onPageChanged: (value) {
                  debugPrint('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
                
                children: [
                  Container(
              width: 300,
            child: Column(children: [
              Container(
                child: Image.asset("lib/assets/fiori.jpg", width: 300,),
              )
            ]),
            ),
            Container(
              width: 300,
            child: Column(children: [
              Container(
                child: Image.asset("lib/assets/fiori.jpg", width: 300,),
              )
            ]),
            ),
                ],
        ),
       
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
            
          return News();
        },)
        ),
      ],
    ));
  }
}