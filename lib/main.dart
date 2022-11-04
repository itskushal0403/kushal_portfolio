import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:mohit_portfolio/colors/colors.dart';
import 'package:mohit_portfolio/pages/hello.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
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
          fontFamily: 'FiraCode',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 62),
            headline2: TextStyle(fontSize: 32),
            labelMedium: TextStyle(fontSize: 16),
            bodyText1: TextStyle(fontSize: 18, color: secondaryGreyColor),
            bodyText2: TextStyle(fontSize: 14, color: secondaryGreyColor),
          )),
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => Scaffold(
          appBar: AppBar(
            toolbarHeight: 56,
            leadingWidth: 200,
            backgroundColor: primaryColor,
            shape: Border.all(color: secondaryGreyColor),
            leading: Container(
              margin: const EdgeInsets.only(left: 22),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'mohit-tater',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            title: Row(
              children: const [
                NavElement(title: '_hello'),
                NavElement(title: '_about_me'),
                NavElement(title: '_projects'),
                Spacer(),
                NavElement(title: '_contact_me'),
              ],
            ),
          ),
          body: const Hello(),
        ),
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) => Scaffold(
              appBar: AppBar(
                title: const Text('page 2'),
              ),
              body: const Center(child: Text('Page 2')),
            ),
          ),
        ],
      ),
    ],
  );
}

class NavElement extends StatelessWidget {
  const NavElement({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 56,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(border: Border.all(color: secondaryGreyColor)),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Text(
          'Heyaa, Wassup!',
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
