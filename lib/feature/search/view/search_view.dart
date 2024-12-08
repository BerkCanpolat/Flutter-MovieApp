import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/search/view/mixin/search_view_mixin.dart';
import 'package:flutter_movieapp/feature/search/view/widget/search_empty_list_widget.dart';
import 'package:flutter_movieapp/feature/search/view/widget/search_image.dart';
import 'package:flutter_movieapp/feature/search/view_model/search_view_model.dart';
import 'package:flutter_movieapp/feature/search/view_model/state/search_bloc_state.dart';
import 'package:flutter_movieapp/product/init/language/locale_keys.g.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';
import 'package:flutter_movieapp/product/utility/extensions/asset_extension.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';
import 'package:flutter_movieapp/product/widget/project_padding/project_padding.dart';
import 'package:gen/gen.dart';

part 'widget/search_empty_bloc_widget.dart';
part 'widget/search_textfield_widget.dart';
part 'widget/search_blocmain_widget.dart';

@RoutePage()
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends BaseState<SearchView> with SearchViewMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => searchViewModel,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                /// Movie Search Text Field [CupertinoSearchTextField]
                _SearchTextField(searchController: searchController, searchViewModel: searchViewModel),

                /// Movie Search And Empty List
               _SearchBlocMainWidget(searchController: searchController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
