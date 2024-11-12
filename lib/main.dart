import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void test() {
  // Sets
  var names = {'foo', 'bar', 'baz'};
  names.add('foo');
  print(names);
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
