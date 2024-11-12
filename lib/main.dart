import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Generator. Values in Iterables are calculated during runtime while List has all values available directly
Iterable<int> getNumbers() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void test() async {
  for (final value in getNumbers()) {
    print(value);
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
