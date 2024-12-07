part of '../home_view.dart';

class _CarouselBlocWidget extends StatelessWidget {
  const _CarouselBlocWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeBlocState>(
      builder: (context, state) {
        if(state.tvSeriesModel?.results == null || state.tvSeriesModel!.results!.isEmpty) {
          return const Center(child: SizedBox(),);
        }

        /// Carousel Auto Play Slider
        return CarouselAutoplaySlider(movieModel: state.tvSeriesModel!);
      },
     );
  }
}