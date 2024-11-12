import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void test(String? firstName, String? lastName) {
  // ? means that the variable can be String or null
  String? middleName = null;
  // ?? is operator used to pick non null value between 2 values
  final nonNullValue = firstName ?? middleName;
  // ??= assigns value to a initialized variable if its value is null currently
  middleName ??= 'yash';
  print(middleName);
  // ?. helps to invoke a method or property if the variable is not null
  List<String>? names = null;
  final length = names?.length ?? 0;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    test(null, "baz");
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
