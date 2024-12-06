import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';
import 'package:gen/gen.dart';

/// Network image with [Lottie] Loading
class HomeCarouselImage extends StatelessWidget {
  const HomeCarouselImage({super.key, this.url, this.icon, this.text});

  final String? url;
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      imageUrl: url,
      size: const Size(315, 215),
      loadingWidget: Assets.lotties.animZombie.lottieBuilder(),
      emptyWidget: Column(
        children: [
          Text(text ?? 'empty'),

          Center(child: Icon(icon),),
        ],
      ),
    );
  }
}