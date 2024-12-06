part of '../home_view.dart';



class _HomePopularBlocWidget extends StatelessWidget {
  const _HomePopularBlocWidget({
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
                child: Text('Popular Movies', style: Theme.of(context).textTheme.labelLarge,),
              ),
              HomePopularListWidget(data: state.movieTopRated,)
            ],
          ),
        );
      },
    );
  }
}
