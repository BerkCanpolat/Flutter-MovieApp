part of '../search_view.dart';
class _SearchBlocMainWidget extends StatelessWidget {
  const _SearchBlocMainWidget({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchViewModel, SearchBlocState>(
      builder: (context, state) {
       final searchMov = state.searchMovieModel?.results;
        if(state.isLoading) {
         return const Center(child: CircularProgressIndicator(),);
        } else if(searchController.text.isEmpty) {
          /// Empty List View
         return const SearchMovieEmptyBlocWidget();
        } else {
         return state.searchMovieModel == null ? const Center(child: SizedBox.shrink(),) : GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: searchMov?.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 5,
        childAspectRatio: 1.2 / 2 
       ), 
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  context.router.push(DetailsRoute(id: searchMov?[index].id ?? 0));
                },
                child: Column(
                  children: [
                    searchMov?[index].backdropPath == null ? const SizedBox.shrink()
                    : SearchImage(
                      url: searchMov?[index].backdropPath.toMovieImage,
                    ),
                    Text(searchMov?[index].originalTitle ?? '')
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}