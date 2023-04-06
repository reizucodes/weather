import 'package:flutter/material.dart';
import './dashboard/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch determines the default color for components u create like appbar
        primarySwatch: Colors.cyan,
      ),
      home: Dashboard(),
    );
  }
}
