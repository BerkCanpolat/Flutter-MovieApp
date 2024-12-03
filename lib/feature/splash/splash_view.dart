import 'dart:async';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      context.router.replace(const MainRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SPLASSSH'),),
    );
  }
}