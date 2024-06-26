import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calculator(title: 'Calculator App'),
    );
  }
}

class Calculator extends StatefulWidget {
  final String title;

  const Calculator({
    super.key, required this.title,
  });


  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: const Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome"),
          Text("Welcome"),

        ],
      )
      )
    );
  }

}



