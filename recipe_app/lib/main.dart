import 'package:flutter/material.dart';

import 'recipe.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return buildRecipeCard(Recipe.samples[index]);
          },
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.imageUrl)),
          Text(recipe.label),
        ],
      ),
    );
  }
}
