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
            const Text('Popular Movies'),
            SearchEmptyMoviListWidget(data: state.movieModel,)
          ],
        );
      },
    );
  }
}
