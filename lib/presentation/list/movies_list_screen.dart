import 'package:flutter/material.dart';
import 'package:flutter_repopattern/data/repository/movies_repository.dart';
import 'package:flutter_repopattern/domain/model/movie.dart';
import 'package:provider/provider.dart';

class MoviesListScreen extends StatefulWidget {
  const MoviesListScreen({super.key});

  @override
  State<MoviesListScreen> createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  @override
  Widget build(BuildContext context) {
    final moiviesRepo = Provider.of<MoviesRepository>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Movies'),
      ),
      body: FutureBuilder<List<Movie>>(
          future: moiviesRepo.getUpcomingMovies(limit: 10, page: 1),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                children: List.generate(
                  snapshot.data!.length,
                  (index) => ListTile(
                    title: Text(snapshot.data![index].title),
                  ),
                ),
              );
            } else {
              return const LinearProgressIndicator();
            }
          }),
    );
  }
}
