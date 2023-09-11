

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carousel extends StatelessWidget {

List<String> imageList=[
  'assets/HomeImg/home1.jpg',
  'assets/HomeImg/back3.jpg',
  'assets/HomeImg/home2.jpg',
];
 carousel({super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.999,
        autoPlayCurve: Curves.fastOutSlowIn,
        height:double.infinity,
        autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
      ),
      items: imageList.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Opacity(opacity: .8,
              child: Image.asset(
                imageUrl,
                fit:BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
