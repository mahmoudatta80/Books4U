import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'package:readify_app/features/home/presentation/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/lottie/book_lottie.json'),
      splashIconSize: 250,
      backgroundColor: const Color(0xff05161A),
      duration: 2500,
      pageTransitionType: PageTransitionType.fade,
      nextScreen: const HomeView(),
    );
  }
}
