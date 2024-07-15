import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              _Overview(),
              CastingCards()
 
            ]),
          )
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          width: double.infinity,
          child: Text(
            "movie.title",
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage("https://via.placeholder.com/500x300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage("https://via.placeholder.com/200x300"),
              height: 150,
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text("movie.title",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("movie.originalTitle",
                  style: TextStyle(fontSize: 16, color: Colors.black45)),
              Row(
                children: [
                  Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  SizedBox(width: 5),
                  Text("movie.voteAverage",
                      style: TextStyle(fontSize: 15, color: Colors.black45)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
          "asjfjaslkfjkaslkdfjaslkdjflkñasjdflkasjdfklasjfdkljasdklfs adklasjdfklajskldfjaslkñfjaslkdjflksdjflkñasjdflkñasjdflkjasdlfkjaslñkdfjlkasñdjf",
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16, height: 1.5)),
    );
  }
}
