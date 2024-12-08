import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/widget/bottom_appar/bottom.dart';

@RoutePage()
final class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        SettingRoute()
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: AppBottomNavigationBar(
            onItemTapped: tabsRouter.setActiveIndex,
            pageIndex: tabsRouter.activeIndex,
          ),
        );
      },
    );
  }
}