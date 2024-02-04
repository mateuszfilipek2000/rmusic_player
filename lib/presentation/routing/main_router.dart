import 'package:go_router/go_router.dart';
import 'package:rmus/presentation/routing/named_route.dart';

GoRouter mainRouter() {
  return GoRouter(
    initialLocation: homeRoute.path,
    routes: [
      homeRoute,
    ],
  );
}

final homeRoute = NamedRoute(
  path: '/',
  name: 'home',
);
