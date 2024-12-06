import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/home/view/widget/home_nowplaying_list_widget.dart';
import 'package:flutter_movieapp/feature/home/view_model/home_view_model.dart';
import 'package:flutter_movieapp/feature/home/view_model/state/home_bloc_state.dart';

class HomeMovieBlocWidget extends StatelessWidget {
  const HomeMovieBlocWidget({
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
              // Expanded(
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: mov.length,
              //     itemBuilder: (context, index) {
              //       final m = mov[index];
              //       return Container(
              //         padding: const ProjectPadding.allSmall(),
              //         child: ClipRRect(
              //           borderRadius:
              //               BorderRadius.circular(ProjectRadius.small.value),
              //           child: ProjectNetworkImage(
              //             url: m.backdropPath.toMovieImage,
              //             icon: Icons.add,
              //             text: 'BİRŞEY BULUNAMADI',
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              HomeNowPlayingMovieList(data: state.movieNow,)
            ],
          ),
        );
      },
    );
  }
}
