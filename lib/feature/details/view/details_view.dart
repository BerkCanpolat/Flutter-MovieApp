// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_movieapp/feature/details/view/mixin/details_mixin.dart';
import 'package:flutter_movieapp/feature/details/view_model/details_view_model.dart';
import 'package:flutter_movieapp/feature/details/view_model/state/details_bloc_state.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/utility/extensions/string_extension.dart';
import 'package:flutter_movieapp/product/widget/project_image/project_network_image.dart';

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

class _DetailsViewState extends BaseState<DetailsView> with DetailsMixin{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => detailsModel,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<DetailsViewModel, DetailsBlocState>(
                builder: (context, state) {
                  final details = state.movieDetailed;
                  String genreText = details!.genres!.map((e) => e.name).join(', ');
                  if(state.isLoading) {
                    return const Center(child: CircularProgressIndicator(),);
                  } else {
                    return state.movieDetailed == null ? const Center(child: Text('NUL GELDİ'),)
                    : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ProjectNetworkImage(
                                url: details.posterPath.toMovieImage,
                              ),
                            ),
                            SafeArea(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(onPressed: (){
                                    Navigator.of(context).pop();
                                  }, icon: Icon(Icons.arrow_back_ios, color: Colors.white,))
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(details.title ?? ''),
                        Row(
                          children: [
                            Text(details.releaseDate != null ? DateTime.parse(details.releaseDate!).year.toString() : 'Tarih yok' ),
                            Text(genreText)
                          ],
                        ),
                        Text(details.overview ?? '')
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}