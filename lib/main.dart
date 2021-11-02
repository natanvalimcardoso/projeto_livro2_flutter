import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();// claro ou escuro dark or light

    // TODO: Apply Home widget
    // 3
    return MaterialApp(
      // theme: theme,

      title: 'Fooderlich',
      // 4
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
        ),
        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              style: theme.textTheme.headline1),
        ),
      ),
    );
  }
}
