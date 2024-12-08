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
              Padding(
                padding: const ProjectPadding.onlyLeftBottomTextSmall(),
                child: BlocBuilder<LanguageCubit, LanguageState>(
                  builder: (context, state) {
                    return Text(
                      LocaleKeys.home_nowplaying.tr(),
                      style: Theme.of(context).textTheme.labelLarge,
                    );
                  },
                ),
              ),
              HomeNowPlayingMovieList(
                data: state.movieNow,
              )
            ],
          ),
        );
      },
    );
  }
}
