import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readify_app/constant.dart';
import 'package:readify_app/core/utils/service_locator.dart';
import 'package:readify_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:readify_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:readify_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
      ),
    );
  }
}
