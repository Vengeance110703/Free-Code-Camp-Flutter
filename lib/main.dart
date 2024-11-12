import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void test() {
  // Multiply string is possible
  final name = "Foo";
  final nameTimes20 = name * 20;
  print(nameTimes20);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(),
    );
  }
}
