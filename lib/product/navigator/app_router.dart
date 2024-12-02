import 'package:auto_route/auto_route.dart';
import 'package:flutter_movieapp/feature/home/view/deneme_view.dart';
import 'package:flutter_movieapp/feature/home/view/home_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: DenemeRoute.page)
  ];
}