import 'package:flutter/material.dart';
import 'package:watch_commerce_ui/features/details/presentation/screens/details.dart';
import 'package:watch_commerce_ui/shared/presentation/screen/app.dart';
import 'package:watch_commerce_ui/theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkThme,
      home: 
      // const ProductDetailsScreen()
      const App()
    );
  }
}
