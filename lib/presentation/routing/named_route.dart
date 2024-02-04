import 'package:go_router/go_router.dart';

final class NamedRoute extends GoRoute {
  NamedRoute({
    required super.path,
    required String name,
    super.builder,
    super.pageBuilder,
    super.parentNavigatorKey,
    super.redirect,
    super.onExit,
    super.routes,
  }) : super(
          name: name,
        );
}
