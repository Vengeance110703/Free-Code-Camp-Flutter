import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cat {
  final String name;
  Cat(this.name);

  // Custom Operator
  @override
  bool operator ==(covariant Cat other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
}

void test() {
  final cat1 = Cat('Foo');
  final cat2 = Cat('Foo');
  if (cat1 == cat2) {
    print('Equal');
  } else {
    print('Not Equal');
  }
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
