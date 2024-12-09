import 'package:flutter/material.dart';
import 'package:local_search/ui/pages/homepage/home_page.dart';

void main() {
  runApp(const LocalSearchApp());
}

class LocalSearchApp extends StatelessWidget {
  const LocalSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/Homepage': (context) => const HomeScreen(),
      },
      home: const HomeScreen(),
    );
  }
}


