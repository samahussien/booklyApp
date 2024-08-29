import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path:AppRouterPaths.homeViewPath,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}

abstract class AppRouterPaths {
 static String homeViewPath = "/homeView";
}
