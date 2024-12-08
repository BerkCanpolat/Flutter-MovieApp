part of '../search_view.dart';

class SearchMovieEmptyBlocWidget extends StatelessWidget {
  const SearchMovieEmptyBlocWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchViewModel, SearchBlocState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const ProjectPadding.onlyLeftBottomTextSmall(),
              child: Text('Search Movies', style: Theme.of(context).textTheme.labelLarge,),
            ),
            SearchEmptyMoviListWidget(data: state.movieModel,)
          ],
        );
      },
    );
  }
}
