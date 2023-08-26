import 'package:flutter/material.dart';
import 'package:untitled/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(splashColor: Colors.transparent),
      title: 'Instagram App',
      // theme: ThemeData(
      // // splashColor: Colors.transparent
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   // useMaterial3: true,
      // ),
      home: const MainScreen(),
    );
  }
}
