import 'package:flutter/material.dart';
import 'package:home_ai/Providers/main_provider.dart';
import 'package:home_ai/pages/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => MainProvider())],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HomeAI',
        home: HomePage(),
      ),
    );
  }
}
