import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/utility/constants/project_radius.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';
import 'package:flutter_movieapp/product/widget/project_image/project_network_image.dart';
import 'package:flutter_movieapp/product/widget/project_padding/project_padding.dart';
import 'package:gen/gen.dart';
import 'package:auto_route/auto_route.dart';

class HomePopularListWidget extends StatelessWidget {
  const HomePopularListWidget({super.key, this.data});

  final MovieModel? data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data?.results?.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const ProjectPadding.allSmall(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(ProjectRadius.small.value),
              child: SizedBox(
                width: 125,
                height: 195,
                child: InkWell(
                  onTap: () {
                    context.router.push(DetailsRoute(id: data?.results?[index].id ?? 0));
                  },
                  child: ProjectNetworkImage(
                    url: data?.results?[index].backdropPath.toMovieImage.toString(),
                    icon: Icons.add,
                    text: 'BİRŞEY BULUNAMADI',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}