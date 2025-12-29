// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

/// Abstract class containing the app's color palette
/// Colors are organized by usage frequency and semantic meaning
abstract class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF202244);
  static const Color primaryBlue = Color(0xFF0961F5);
  static const Color accentOrange = Color(0xFFFF6B00);

  // Neutral Colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGray = Color(0xFF545454);
  static const Color mediumGray = Color(0xFFA0A4AB);
  static const Color lightGray = Color(0xFFB4BDC4);
  static const Color veryLightGray = Color(0xFFE2E6EA);
  static const Color nearBlack = Color(0xFF1D1D1B);
  static const Color charcoal = Color(0xFF505050);

  // Background Colors
  static const Color backgroundLight = Color(0xFFF5F9FF);
  static const Color backgroundPale = Color(0xFFE8F1FF);
  static const Color backgroundWhite = Color(0xFFFDFEFF);
  static const Color backgroundBlueGray = Color(0xFFDFEAEF);

  // Blue Shades
  static const Color teal = Color(0xFF167F71);
  static const Color navyBlue = Color(0xFF004787);
  static const Color royalBlue = Color(0xFF0455BF);
  static const Color skyBlue = Color(0xFF52BBE9);
  static const Color brightBlue = Color(0xFF1A6EFC);
  static const Color lightBlue = Color(0xFF4D81E5);
  static const Color cyan = Color(0xFF1CABE1);
  static const Color paleBlue = Color(0xFFD5E2F5);

  // Yellow/Orange Shades
  static const Color gold = Color(0xFFFCCB40);
  static const Color amber = Color(0xFFFF9C07);
  static const Color yellow = Color(0xFFFAC025);
  static const Color brightYellow = Color(0xFFFEBC00);
  static const Color darkGold = Color(0xFFEDAA03);
  static const Color orangeRed = Color(0xFFE78B01);

  // Green Shades
  static const Color green = Color(0xFF24B378);
  static const Color limeGreen = Color(0xFF50B748);
  static const Color darkGreen = Color(0xFF10A711);
  static const Color emerald = Color(0xFF19AC66);

  // Red Shades
  static const Color red = Color(0xFFFF001E);
  static const Color crimson = Color(0xFFDD2E44);
  static const Color darkRed = Color(0xFFD80027);

  // Purple Shades
  static const Color purple = Color(0xFF332DA1);
  static const Color lavender = Color(0xFFB9D4DB);

  // Semantic Colors
  static const Color error = Color(0xFFFF001E);
  static const Color success = Color(0xFF24B378);
  static const Color warning = Color(0xFFFF9C07);
  static const Color info = Color(0xFF0961F5);

  // Opacity Variants (for shadows and overlays)
  static Color blackOpacity8 = const Color(0xFF000000).withOpacity(0.08);
  static Color blackOpacity10 = const Color(0xFF000000).withOpacity(0.10);
  static Color blackOpacity16 = const Color(0xFF000000).withOpacity(0.16);
  static Color blackOpacity20 = const Color(0xFF000000).withOpacity(0.20);
  static Color blackOpacity30 = const Color(0xFF000000).withOpacity(0.30);

  static Color primaryOpacity80 = const Color(0xFF202244).withOpacity(0.80);
  static Color primaryOpacity88 = const Color(0xFF202244).withOpacity(0.88);

  static Color grayOpacity20 = const Color(0xFFB4BDC4).withOpacity(0.20);
  static Color grayOpacity30 = const Color(0xFFB4BDC4).withOpacity(0.30);
  static Color grayOpacity40 = const Color(0xFFB4BDC4).withOpacity(0.40);
  static Color grayOpacity50 = const Color(0xFFB4BDC4).withOpacity(0.50);

  static Color backgroundOpacity30 = const Color(0xFFF5F9FF).withOpacity(0.30);
}
