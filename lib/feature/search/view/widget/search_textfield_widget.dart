part of '../search_view.dart';
class _SearchTextField extends StatelessWidget {
  const _SearchTextField({
    super.key,
    required this.searchController,
    required this.searchViewModel,
  });

  final TextEditingController searchController;
  final SearchViewModel searchViewModel;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: searchController,
      prefixIcon: const Icon(Icons.search),
      suffixIcon: const Icon(Icons.cancel),
      backgroundColor: Colors.grey.withOpacity(0.3),
      onChanged: (value) {
        searchViewModel.searchGetBloc(value);
      },
    );
  }
}