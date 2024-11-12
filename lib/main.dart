import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cat {
  final String name;
  Cat(this.name);
}

// Add logic to existing classes
extension Run on Cat {
  void run() {
    print('Cat $name is running');
  }
}

void test() {
  final meow = Cat('Fluffers');
  meow.run();
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
