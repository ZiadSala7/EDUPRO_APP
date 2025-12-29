import 'dart:async';
import '../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  static const String id = 'eduProSplashView';
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController circleController;
  late Animation<double> circleAnimation;

  late AnimationController logoController;
  late Animation<double> logoScale;
  late Animation<double> logoOpacity;

  @override
  void initState() {
    super.initState();

    /// Animation للـ Circle
    circleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    circleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: circleController, curve: Curves.easeOutBack),
    );

    circleController.forward();

    /// Logo Animation
    logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    logoScale = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(parent: logoController, curve: Curves.elasticOut),
    );

    logoOpacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: logoController, curve: Curves.easeIn));

    /// Start logo after little delay
    Future.delayed(const Duration(milliseconds: 500), () {
      logoController.forward();
    });

    /// After splash ends → go to next page
    Timer(const Duration(seconds: 3), () {
      // Navigator.pushReplacement(context, ...);
    });
  }

  @override
  void dispose() {
    circleController.dispose();
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SplashViewBody(
        circleAnimation: circleAnimation,
        logoOpacity: logoOpacity,
        logoScale: logoScale,
      ),
    );
  }
}
