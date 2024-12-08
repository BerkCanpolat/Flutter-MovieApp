import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/feature/home/view/widget/home_carousel_image.dart';
import 'package:flutter_movieapp/product/utility/constants/project_radius.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';
import 'package:gen/gen.dart';

class CarouselAutoplaySlider extends StatelessWidget {
  final TvSeriesModel movieModel;
  const CarouselAutoplaySlider({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: (size.height * 0.33 < 300) ? 300 : size.height * 0.33,
      child: CustomCarousel(
        itemCount: movieModel.results!.length, 
        heigth: (size.height * 0.33 < 300) ? 300 : size.height * 0.33,
        carouselBuilder: (index) {
          final movData = movieModel.results?[index].backdropPath;
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(ProjectRadius.medium.value),
                child: HomeCarouselImage(
                  url: movData.toMovieImage,
                ),
              ),
              const SizedBox(height: 10,),
              Text(movieModel.results?[index].name ?? '', style: Theme.of(context).textTheme.labelLarge)
            ],
          );
        },
      ),
    );
  }
}