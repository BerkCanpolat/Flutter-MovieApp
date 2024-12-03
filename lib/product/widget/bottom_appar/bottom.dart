import 'package:flutter/material.dart';

typedef OnItemTapped = void Function(int)?;

final class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    required this.pageIndex,
    super.key,
    this.onItemTapped,
  });
  final OnItemTapped onItemTapped;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: pageIndex,
      items: const [
        BottomNavigationBarItem(
          label: 'HOME',
          icon: const Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'HOME',
          icon: const Icon(Icons.category),
        ),
      ],
    );
  }
}