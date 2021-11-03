import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
// 2
    final ThemeData theme = ThemeData();
// 3
    return MaterialApp(
// 4c
      title: 'Recipe Calculator',
// 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
// 6
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
// 1
    return Scaffold(
// 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
// 3
      body: SafeArea(
// TODO: Replace child: Container()
// 4
        child: Container(),
      ),
    );
  }
// TODO: Add buildRecipeCard() here
}
