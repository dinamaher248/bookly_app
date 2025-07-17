import 'package:bookly_app/Features/home/data/repo/home_repo_imple.dart';
import 'package:bookly_app/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../Features/Splash/presentation/view/splash_view.dart';
import '../Features/home/data/models/book_model.dart';
import '../Features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import '../utils/service_locator.dart';

abstract class AppRouter {
  static const splashViewPath = '/splash';
  static const homeViewPath = '/home';
  static const bookDetailsViewPath = '/book-details';
  static const searchViewPath = '/search';

  static final router = GoRouter(
    initialLocation: splashViewPath,
    routes: [
      GoRoute(
        path: splashViewPath,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImple>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),),
      ),
      GoRoute(
        path: searchViewPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
