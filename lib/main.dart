import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/counter_page.dart';
import 'pages/long_list_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Full App',
      home: const LoginPage(),
      routes: {
        '/counter': (_) => const CounterPage(title: 'Counter App Home Page'),
        '/longList': (_) => LongListPage(
              items: List<String>.generate(10000, (i) => 'Item $i'),
            ),
      },
    );
  }
}
