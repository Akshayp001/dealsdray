import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/PosterModel.dart';

class HorizontalScrollView extends StatelessWidget {
  final List<PosterModel> posters;

  const HorizontalScrollView({
    Key? key,
    required this.posters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: posters.map((poster) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: poster.onClick,
              child: Container(
                // margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(poster.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
