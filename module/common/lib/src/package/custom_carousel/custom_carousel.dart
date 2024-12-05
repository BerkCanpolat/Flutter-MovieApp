import 'package:carousel_slider/carousel_slider.dart';
import 'package:common/src/package/custom_carousel/carousel_size.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
    this.scrollDirection = Axis.horizontal,
    this.reverseImage = false,
    this.autoPlayImage = true,
    this.enlargeCenterPage = true,
    this.autoPlayInterval = const Duration(seconds: 3),
    this.autoPlayAnimationDuration = const Duration(milliseconds: 999),
    required this.heigth,
    required this.itemCount,
    required this.carouselBuilder, 
    this.aspectRatio = const CarouselSize(),
  });

  final bool reverseImage;
  final bool autoPlayImage;
  final bool enlargeCenterPage;
  final Duration autoPlayInterval;
  final Duration autoPlayAnimationDuration;
  final Axis scrollDirection;
  final double heigth;
  final int itemCount;
  final CarouselSize aspectRatio;
  final Widget Function(int index) carouselBuilder;

  @override
  Widget build(BuildContext context) {
    
    return CarouselSlider.builder(
      itemCount: itemCount,
      options: CarouselOptions(
          enlargeCenterPage: enlargeCenterPage,
          reverse: reverseImage,
          aspectRatio: aspectRatio.aspectRatio,
          autoPlay: autoPlayImage,
          autoPlayInterval: autoPlayInterval,
          autoPlayAnimationDuration: autoPlayAnimationDuration,
          scrollDirection: scrollDirection,
          height: heigth),
      itemBuilder: (context, index, realIndex) => carouselBuilder(index),
    );
  }
}
