import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
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
        path: AppRouterPaths.homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouterPaths.bookDetailsViewPath,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: AppRouterPaths.searchViewPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

abstract class AppRouterPaths {
  static String homeViewPath = "/homeView";
  static String bookDetailsViewPath = "/bookDetailsView";
  static String searchViewPath = "/searchView";
}
