import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/data/api_client.dart';
import 'package:go_router_sample/data/qiita_item_repository_impl.dart';
import 'package:go_router_sample/ui/screen/qiita_item_detail_screen.dart';
import 'package:go_router_sample/ui/screen/qiita_list_screen.dart';

import 'domain/qiita_item_repository.dart';

final GoRouter _router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => QiitaListScreen(
            navigateToDetail: (String id) {
              context.push('/$id}');
            },
          ),
      routes: [
        GoRoute(
          path: '/:itemId',
          builder: (context, state) => QiitaItemDetailScreen(
            itemId: state.pathParameters['itemId']!,
          ),
        )
      ]),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        qiitaItemRepository
            .overrideWithValue(QiitaItemRepositoryImpl(apiClient: ApiClient())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
