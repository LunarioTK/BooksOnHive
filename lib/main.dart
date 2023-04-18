import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storebooksonhive/home/view/home_view.dart';

void main() async {
  //init hive
  await Hive.initFlutter();

  // abrir box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
