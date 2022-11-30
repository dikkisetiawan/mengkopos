import 'package:flutter/material.dart';

import 'ui/screens/presensi_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: PresensiScreen(),
        routes: {
          '/presensi': (context) => PresensiScreen(),
          // '/dashboard': (context) => DashboardPage(),
          //'/task-details': (context) => SignUpPage(),
        });
  }
}
