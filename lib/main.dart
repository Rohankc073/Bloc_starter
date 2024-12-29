import 'package:bloc_starter/app.dart';
import 'package:bloc_starter/view/init_dependencies.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Ensure that the Flutter engine is initialized before initializing the dependencies

  await initDependencies();
  runApp(
    const App(),
  );
}
