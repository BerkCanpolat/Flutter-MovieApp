// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';

class SearchImage extends StatelessWidget {
  const SearchImage({
    Key? key,
    this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      size: Size(130, 95),
      imageUrl: url,
      loadingWidget: Assets.lotties.animZombie.lottieBuilder(),
      emptyWidget: Center(child: Icon(Icons.hourglass_empty),),
    );
  }
}
