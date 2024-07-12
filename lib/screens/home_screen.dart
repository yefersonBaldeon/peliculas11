// import 'package:cine/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {

    // final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Películas klsdjañfjasdk'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon( Icons.search_outlined ),
            // onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate() ),
            onPressed: () => {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper1(),
            MovieSlider(),
            
          ],
        ),
      )
    );
  }
}