import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootNavigationScreen extends ConsumerWidget {
  const RootNavigationScreen({
    required Widget child,
    required int currentIndex,
    required void Function(int index) itemTapped,
    super.key,
  })  : _child = child,
        _currentIndex = currentIndex,
        _itemTapped = itemTapped;

  final Widget _child;
  final int _currentIndex;
  final void Function(int index) _itemTapped;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'ホーム',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '検索',
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => _itemTapped(index),
      ),
      body: SafeArea(
        child: _child,
      ),
    );
  }
}
