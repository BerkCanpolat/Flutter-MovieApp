import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/product/state/app_get_it_read.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_view_model.dart';

class StateInitialize extends StatelessWidget {
  const StateInitialize({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeViewModel>.value(value: AppGetItRead.themeViewModel,)
      ], 
      child: child
    );
  }
}