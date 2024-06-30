import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animateddemo/screens/tabscreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: LottieBuilder.asset(
        'animation/Animation - 1719710395352.json',
        frameRate: FrameRate(20), // يمكنك تعديل هذه القيمة لضبط سرعة الحركة
        repeat: true, // يتكرر التحريك بلا نهاية
      ),
      nextScreen: const TabScreen(),
      splashIconSize: 800, // حجم الأيقونة المتحركة
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
