import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark(); // claro ou escuro dark or light

    return MaterialApp(
      theme: theme,          //retornar o outro a
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
