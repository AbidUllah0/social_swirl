import 'package:flutter/material.dart';
import 'package:social_swirl_app/screens/about_screen/about_screen.dart';
import 'package:social_swirl_app/screens/contact_screen/contact_screen.dart';
import 'package:social_swirl_app/screens/home_screen/home_screen.dart';
import 'package:social_swirl_app/screens/services_screen/services_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Swirl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/about': (context) => AboutScreen(),
        '/services': (context) => ServicesScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}
