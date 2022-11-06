import 'package:flutter/material.dart';
import 'package:slider_app/view/screen/chats.dart';
import 'package:slider_app/view/screen/onboarding.dart';
import 'package:slider_app/view/screen/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: const OnBoarding(),
      routes: {
        'welcome': (context) => const Welcome(),
        'chats': (context) => const Chats(),
      },
    );
  }
}
