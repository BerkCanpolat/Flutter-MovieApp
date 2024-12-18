part of '../details_view.dart';

class _DetailsRecomBlocMainWidget extends StatelessWidget {
  const _DetailsRecomBlocMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsViewModel, DetailsBlocState>(
      builder: (context, state) {
        final recom = state.movieRecom?.results;
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return state.movieRecom?.results == null
              ? const SizedBox.shrink()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const ProjectPadding.onlyTopAndBottom(),
                      child: BlocBuilder<LanguageCubit, LanguageState>(
                        builder: (context, state) {
                          return Text(
                            LocaleKeys.search_morelike.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          );
                        },
                      ),
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: recom?.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 3,
                              childAspectRatio: 1.3 / 2),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                context.router.push(
                                    DetailsRoute(id: recom?[index].id ?? 0));
                              },
                              child: SizedBox(
                                height: 195,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      ProjectRadius.small.value),
                                  child: ProjectNetworkImage(
                                    url: recom?[index].posterPath.toMovieImage,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                );
        }
      },
    );
  }
}
