import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/search/view/widget/search_empty_list_widget.dart';
import 'package:flutter_movieapp/feature/search/view_model/search_view_model.dart';
import 'package:flutter_movieapp/feature/search/view_model/state/search_bloc_state.dart';

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
