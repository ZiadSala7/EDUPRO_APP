import 'package:flutter/material.dart';

import 'core/di/injection.dart';
import 'edupro_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const EduProApp());
}
