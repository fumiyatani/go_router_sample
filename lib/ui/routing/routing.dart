import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/ui/screen/qiita_item_detail_screen.dart';
import 'package:go_router_sample/ui/screen/qiita_item_search_list_screen.dart';
import 'package:go_router_sample/ui/screen/qiita_list_screen.dart';
import 'package:go_router_sample/ui/screen/root_navigation_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/items',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return RootNavigationScreen(
          currentIndex: _calculateSelectedIndex(context),
          itemTapped: (int index) {
            switch (index) {
              case 0:
                context.go('/items');
              case 1:
                context.go('/search');
              default:
                throw UnimplementedError('不明な実装');
            }
          },
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: '/items',
          builder: (context, state) => QiitaListScreen(
            navigateToDetail: (String id) {
              context.push('/items/$id}');
            },
          ),
          routes: [
            GoRoute(
              path: ':itemId',
              builder: (context, state) => QiitaItemDetailScreen(
                itemId: state.pathParameters['itemId']!,
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => QiitaItemSearchListScreen(
            navigateToDetail: (String id) {
              context.push('/search/:$id');
            },
          ),
          routes: [
            GoRoute(
              path: ':itemId',
              builder: (context, state) => QiitaItemDetailScreen(
                itemId: state.pathParameters['itemId']!,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

int _calculateSelectedIndex(BuildContext context) {
  final String location = GoRouterState.of(context).uri.path;

  if (location.startsWith('/items')) {
    return 0;
  }
  if (location.startsWith('/search')) {
    return 1;
  }
  return 0;
}
