import 'package:bookly_app/Features/home/data/repo/home_repo.dart';
import 'package:bookly_app/Features/home/data/repo/home_repo_imple.dart';
import 'package:bookly_app/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // Register your services and repositories here
  // Example:
  // getIt.registerLazySingleton<ApiService>(() => ApiService());
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImple(apiService: getIt<ApiService>()));
  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(apiService: ApiService(dio: Dio())),
  );
}
