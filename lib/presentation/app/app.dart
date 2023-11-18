import 'package:flutter/material.dart';
import 'package:flutter_repopattern/main.dart';
import 'package:flutter_repopattern/presentation/list/movies_list_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final InitialData data;

  const App({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: data.providers,
      child: MaterialApp(
        title: 'Movie App',
        home: MoviesListScreen(),
      ),
    );
  }
}
