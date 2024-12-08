// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_movieapp/feature/details/view/mixin/details_mixin.dart';
import 'package:flutter_movieapp/feature/details/view_model/details_view_model.dart';
import 'package:flutter_movieapp/feature/details/view_model/state/details_bloc_state.dart';
import 'package:flutter_movieapp/product/init/language/locale_keys.g.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';
import 'package:flutter_movieapp/product/utility/constants/project_radius.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';
import 'package:flutter_movieapp/product/widget/project_image/project_network_image.dart';
import 'package:flutter_movieapp/product/widget/project_padding/project_padding.dart';

part 'widgets/details_mainbloc_widget.dart';
part 'widgets/details_recom_mainbloc_widget.dart';

@RoutePage()
class DetailsView extends StatefulWidget {
  final int id;
  const DetailsView({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends BaseState<DetailsView> with DetailsMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => detailsModel,
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// Picture - Film Name - Film Year - Includes Description Information
              _DetailsBlocMainWidget(),

              /// Recommended similar films
              _DetailsRecomBlocMainWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
