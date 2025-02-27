// import 'package:cine/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/providers/movies_provider.dart';
import 'package:flutter_application_5/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    // print(moviesProvider.onDisplayMovies);
    // final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Películas FIS',
            style: TextStyle(
                color: Colors.white), // Esto cambia el color del texto a blanco
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined),
              // onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate() ),
              onPressed: () => {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CardSwiper1(movies: moviesProvider.onDisplayMovies),
              // MovieSlider(),
              MovieSlider(
                movies: moviesProvider.popularMovies, // populares,
                title: 'Populares', // opcional
                onNextPage: () => moviesProvider.getPopularMovies(),
              ),
            ],
          ),
        ));
  }
}
