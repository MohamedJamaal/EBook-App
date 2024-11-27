import 'package:ebookapp/features/home/presentation/views/book_details_view.dart';
import 'package:ebookapp/features/home/presentation/views/home_view.dart';
import 'package:ebookapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/homeView';
  static const KBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splashview(),
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: KBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
