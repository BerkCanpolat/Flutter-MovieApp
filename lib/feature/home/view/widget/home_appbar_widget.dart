part of '../home_view.dart';
class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const _HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Assets.images.logo.toImage(),
      actions: [
        IconButton(onPressed: (){
          context.router.push(SettingRoute());
        }, icon: const Icon(Icons.add)),
        _Loading()
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _Loading extends StatelessWidget {
  const _Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeBlocState>(
      builder: (context, state) {
        if (!state.isLoading) return const SizedBox.shrink();
        return const CircularProgressIndicator.adaptive();
      },
    );
  }
}