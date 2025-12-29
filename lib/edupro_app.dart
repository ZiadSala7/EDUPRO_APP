import 'package:flutter/material.dart';

import 'core/constants/app_constants.dart';
import 'core/utils/app_router.dart';

class EduProApp extends StatelessWidget {
  const EduProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppConstants.appFontFamily),
    );
  }
}
