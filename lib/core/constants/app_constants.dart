import 'dart:ui';

import 'package:flutter/material.dart';

import 'size_config.dart';

abstract class AppConstants {
  // custom app font family
  static const String appFontFamily = 'Jost';
  // responsive text font size

  // sacleFactor
  // responsive font size
  // (min , max) fontsize
 static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    var dispatcher = PlatformDispatcher.instance;
    var physicalWidth = dispatcher.views.first.physicalSize.width;
    var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    double width = physicalWidth / devicePixelRatio;

    return width < SizeConfig.tablet
        ? width / 1000
        : width < SizeConfig.desktop
        ? width / 1000
        : width / 1920;
  }
}
