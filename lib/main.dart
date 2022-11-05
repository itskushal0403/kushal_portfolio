import 'package:flutter/material.dart';
import 'package:mohit_portfolio/colors/colors.dart';
import 'package:mohit_portfolio/constants.dart';
import 'package:mohit_portfolio/router_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getRouterConfig(context),
      title: 'Mohit Tater',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          brightness: Brightness.dark,

          // custom font and textTheme configuration
          fontFamily: kFontFamily,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 62),
            headline2: TextStyle(fontSize: 32),
            labelMedium: TextStyle(fontSize: 16),
            bodyText1: TextStyle(fontSize: 18, color: secondaryGreyColor),
            bodyText2: TextStyle(fontSize: 14, color: secondaryGreyColor),
          )),
    );
  }
}
