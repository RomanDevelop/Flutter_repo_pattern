import 'package:flutter/material.dart';
import 'package:flutter_repopattern/presentation/list/movies_list_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      home: MoviesListScreen(),
    );
  }
}
