import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_movieapp/feature/home/view_model/home_view_model.dart';
import 'package:flutter_movieapp/feature/home/view_model/state/home_bloc_state.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeViewModel,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              context.router.push(const DenemeRoute());
            }, icon: Icon(Icons.details)),
            BlocBuilder<HomeViewModel, HomeBlocState>(
              builder: (context, state) {
                print("BlocBuilder isLoading: ${state.isLoading}");
                if(!state.isLoading) return const SizedBox.shrink();
                return const CircularProgressIndicator.adaptive();
              },
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<HomeViewModel, HomeBlocState>(
                        builder: (context, state) {
              final mov = state.movieNow?.results ?? [];
              return ListView.builder(
                itemCount: mov.length,
                itemBuilder: (context, index) {
                  final m = mov[index];
                  return ListTile(
                    title: Text(m.title ?? ''),
                  );
                },
              );
                        },
                        ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () async {
          await homeViewModel.fetchMovieNowPlaying();
        }),
      ),
    );
  }
}