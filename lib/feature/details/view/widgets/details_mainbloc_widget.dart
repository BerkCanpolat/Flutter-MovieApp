part of '../details_view.dart';
class _DetailsBlocMainWidget extends StatelessWidget {
  const _DetailsBlocMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsViewModel, DetailsBlocState>(
      builder: (context, state) {
        final details = state.movieDetailed;
        final genreText = (details?.genres?.isNotEmpty ?? false)
            ? details?.genres!.map((e) => e.name).join(', ')
            : 'Tür bilgisi yok';
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return state.movieDetailed == null
              ? const SizedBox.shrink()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ProjectNetworkImage(
                            url: details?.posterPath.toMovieImage,
                          ),
                        ),
                        SafeArea(
                          child: Padding(
                            padding: const ProjectPadding.allSmall(),
                            child: Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const ProjectPadding.onlyLeftSmall(),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const ProjectPadding.onlyTopAndBottom(),
                      child: Center(child: Text(details?.title ?? '', style: Theme.of(context).textTheme.labelLarge,)),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const ProjectPadding.onlyTopAndBottom(),
                          child: Text(details?.releaseDate != null
                              ? DateTime.parse(details!.releaseDate!)
                                  .year
                                  .toString()
                              : 'Tarih yok', style: Theme.of(context).textTheme.titleMedium),
                        ),
                            SizedBox(width: 10,),
                        Text(genreText ?? '', style: Theme.of(context).textTheme.titleMedium)
                      ],
                    ),
                    Padding(
                      padding: const ProjectPadding.onlyTopAndBottom(),
                      child: Text(details?.overview ?? '' , textAlign: TextAlign.center,style: Theme.of(context).textTheme.titleSmall),
                    )
                  ],
                );
        }
      },
    );
  }
}