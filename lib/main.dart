import 'package:algebra_calculator/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => MainModel())
        ],
        child: const MaterialApp(
        home: Calculator(title: "Calculator App"),
        )
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
      body:  Center(

        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers),
                labelText: "Enter REPEAT a number",
              ),
              onChanged: (value) => {
                context.read<MainModel>().counter = int.parse(value)
              },
            ),
            ElevatedButton(onPressed: () { context.read<MainModel>().halfNumberOperation(); }
            , child: Icon(Icons.calculate)),

            Text("Answer: ${context.watch<MainModel>().halfNumber.toString()}"),



          ],
                ),
        )
      )
    );
  }

}



