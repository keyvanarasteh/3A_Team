import 'package:flutter/material.dart';
import 'package:flutter_application_1/campArea.dart';
import 'package:flutter_application_1/firstScreen.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/responsive/screenLayout.dart';

import 'features.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        "/Welcome": (context) => FirstScreen(),
        "/CampArea": (context) => campArea(),
        "/Features": (context) => Features(),
        "/Home": (context) => screenLayout()
      },
      initialRoute: "/Welcome",
    );
  }
}
