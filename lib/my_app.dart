import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/data/api_client.dart';
import 'package:go_router_sample/data/qiita_item_repository_impl.dart';
import 'package:go_router_sample/ui/routing/Routing.dart';

import 'domain/qiita_item_repository.dart';

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
        routerConfig: router,
      ),
    );
  }
}
