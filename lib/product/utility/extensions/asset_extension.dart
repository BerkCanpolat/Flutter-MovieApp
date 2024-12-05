import 'package:flutter_movieapp/product/utility/constants/app_constants/app_constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gen/gen.dart';
import 'package:lottie/lottie.dart';

extension LottieExtension on LottieGenImage {
  LottieBuilder lottieBuilder({double height = 130}) =>
      lottie(package: AppConstants.genPackageName, height: height);
}

extension SvgExtension on SvgGenImage {
  SvgPicture toSvg({double height = 200}) =>
      this.svg(package: AppConstants.genPackageName, height: height);
}