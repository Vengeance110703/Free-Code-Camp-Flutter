import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value) => 'Foo');
}

void test() async {
  await for (final value in getName()) {
    print(value);
  }
  print('Stream finished working');
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
