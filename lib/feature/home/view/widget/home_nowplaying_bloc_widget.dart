part of '../home_view.dart';

class _HomeMovieBlocWidget extends StatelessWidget {
  const _HomeMovieBlocWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeBlocState>(
      builder: (context, state) {
        return SizedBox(
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Now Playing Movies'),
              HomeNowPlayingMovieList(data: state.movieNow,)
            ],
          ),
        );
      },
    );
  }
}
