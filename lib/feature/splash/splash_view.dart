import 'dart:async';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';
import 'package:gen/gen.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      context.router.replace(const MainRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Assets.lotties.netflix.lottieBuilder(height: 300),)
    );
  }
}