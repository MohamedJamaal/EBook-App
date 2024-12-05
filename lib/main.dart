import 'package:dio/dio.dart';
import 'package:ebookapp/constants.dart';
import 'package:ebookapp/core/utils/api_service.dart';
import 'package:ebookapp/core/utils/app_router.dart';
import 'package:ebookapp/core/utils/service_locator.dart';
import 'package:ebookapp/features/home/data/repos/home_repo_impl.dart';
import 'package:ebookapp/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:ebookapp/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getit.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getit.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
