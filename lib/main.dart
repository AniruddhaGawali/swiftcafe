import 'package:flutter/material.dart';

//screens
import 'package:swiftcafe/screen/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFA7745A),
          secondary: const Color(0xFF66A35C),
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
