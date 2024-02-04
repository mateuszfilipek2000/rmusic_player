import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rmus/presentation/routing/main_router.dart';
import 'package:rmus/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = useMemoized(() => mainRouter(), []);

    return MaterialApp.router(
      title: 'RMus',
      routerConfig: appRouter,
      themeMode: ThemeMode.light,
    );
  }
}
