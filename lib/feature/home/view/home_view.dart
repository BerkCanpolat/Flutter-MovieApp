import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_movieapp/feature/home/view/widget/home_nowplaying_list_widget.dart';
import 'package:flutter_movieapp/feature/home/view/widget/home_popular_list_widget.dart';
import 'package:flutter_movieapp/feature/home/view_model/home_view_model.dart';
import 'package:flutter_movieapp/feature/home/view_model/state/home_bloc_state.dart';
import 'package:flutter_movieapp/product/init/language/locale_keys.g.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';
import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';
import 'package:flutter_movieapp/product/widget/carousel_slider/carousel_autoplay_slider.dart';
import 'package:flutter_movieapp/product/widget/project_padding/project_padding.dart';
import 'package:gen/gen.dart';

part 'widget/home_carousel_bloc_widget.dart';
part 'widget/home_nowplaying_bloc_widget.dart';
part 'widget/home_popular_bloc_widget.dart';
part 'widget/home_appbar_widget.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeViewModel,
      child:  const Scaffold(
        appBar: _HomeAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: ProjectPadding.onlyTop(),
            child: Column(
              children: [
                /// Auto-scrollable carousel widget
                _CarouselBlocWidget(),
            
                /// Now Playing Movies
                _HomeMovieBlocWidget(),
            
                SizedBox(height: 15,),
                /// Popular Movies
                _HomePopularBlocWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


