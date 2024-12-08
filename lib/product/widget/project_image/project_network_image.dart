import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';
import 'package:gen/gen.dart';

/// Network image with [Lottie] Loading
class ProjectNetworkImage extends StatelessWidget {
  const ProjectNetworkImage({super.key, this.url, this.icon, this.text});

  final String? url;
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      loadingWidget: Assets.lotties.loading.lottieBuilder(),
      emptyWidget: Column(
        children: [
          Text(text ?? 'empty'),

          /// This is icon Icons.movie_filter_outlined
          Center(child: Icon(icon),),
        ],
      ),
    );
  }
}