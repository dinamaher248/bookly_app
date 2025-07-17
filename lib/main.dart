import 'package:bookly_app/Features/home/data/repo/home_repo_imple.dart';
import 'package:bookly_app/Features/home/presentation/view_model/best_seller_list_view_cubit/best_seller_list_view_cubit.dart';
import 'package:bookly_app/constants/app_router.dart';
import 'package:bookly_app/constants/constant.dart';
import 'package:bookly_app/utils/service_locator.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Features/home/presentation/view_model/feature_custom_list_view_cubit/feature_custom_list_view_cubit.dart';




void main() {
   setupServiceLocator();
  runApp(DevicePreview(enabled: true, builder: (context) => const BooklyApp()));
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>FeatureCustomListViewCubit(
                getIt.get<HomeRepoImple>(),
              )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (context) =>
                  BestSellerListViewCubit(getIt.get<HomeRepoImple>())
                    ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
