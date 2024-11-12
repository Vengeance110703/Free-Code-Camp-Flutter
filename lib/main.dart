import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cat {
  final String name;
  Cat(this.name);

  // Factory Constructor, used when you are using an instance of a class with the same values multiple times in code
  factory Cat.fluffball() {
    return Cat('Fluff Ball');
  }
}

void test() {
  final fluffBall = Cat.fluffball();
  print(fluffBall.name);
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
      home: const Scaffold(),
    );
  }
}
