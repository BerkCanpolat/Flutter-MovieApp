import 'package:auto_route/auto_route.dart';
import 'package:flutter_movieapp/feature/home/view/deneme_view.dart';
import 'package:flutter_movieapp/feature/home/view/home_view.dart';
import 'package:flutter_movieapp/feature/splash/splash_view.dart';
import 'package:flutter_movieapp/product/widget/bottom_appar/bottom_appbar.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: MainRoute.page, 
    children: [
      AutoRoute(page: HomeRoute.page),
      AutoRoute(page: DenemeRoute.page),
    ]),
  ];
}