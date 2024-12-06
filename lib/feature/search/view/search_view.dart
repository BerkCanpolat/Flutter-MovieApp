import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/search/view/mixin/search_view_mixin.dart';
import 'package:flutter_movieapp/feature/search/view/widget/search_image.dart';
import 'package:flutter_movieapp/feature/search/view_model/search_view_model.dart';
import 'package:flutter_movieapp/feature/search/view_model/state/search_bloc_state.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';

@RoutePage()
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends BaseState<SearchView> with SearchViewMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => searchViewModel,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                CupertinoSearchTextField(
                  controller: searchController,
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.cancel),
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  onChanged: (value) {
                    searchViewModel.searchGetBloc(value);
                    print(value);
                  },
                ),
                BlocBuilder<SearchViewModel, SearchBlocState>(
                  builder: (context, state) {
                    final searchMov = state.searchMovieModel?.results;
                    return state.searchMovieModel == null ? const Center(child: SizedBox.shrink(),) : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: searchMov?.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 5,
                    childAspectRatio: 1.2 / 2 
                   ), 
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              searchMov?[index].backdropPath == null ? const SizedBox.shrink()
                              : SearchImage(
                                url: searchMov?[index].backdropPath.toMovieImage,
                              ),
                              Text(searchMov?[index].originalTitle ?? '')
                            ],
                          );
                        },
                      );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
