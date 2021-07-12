import 'package:assecad/src/covenants/covenants_page.dart';
import 'package:assecad/src/home/home_page.dart';
import 'package:assecad/src/login/login_page.dart';
import 'package:assecad/src/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ASSECAD",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/covenants': (context) => CovenantsPage(),
      },
    );
  }
}
