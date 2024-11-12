import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Named list of related items
enum PersonProperties { firstName, lastName, age }

void test() {
  print(PersonProperties.firstName.name);
  // use Switch case instead of if else over enumerations
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
