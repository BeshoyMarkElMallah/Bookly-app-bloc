import 'package:bookly_bloc/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_bloc/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_bloc/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_bloc/constants.dart';
import 'package:bookly_bloc/core/utils/api_service.dart';
import 'package:bookly_bloc/core/utils/app_router.dart';
import 'package:bookly_bloc/core/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
