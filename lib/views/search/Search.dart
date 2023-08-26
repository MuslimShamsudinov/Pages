import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: customSearchDelegate());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class customSearchDelegate extends SearchDelegate {
  List<String> searchItems = [
"Smak That",
"ufc",
"Ilon Muskgxdfghsdhgsgfesgbdsbgrfsdbfgdsgf",
"Instagram",
"Islam",
"Flutter",
"Java",
"Python",
"dart",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> mathGuery = [];
    for (var player in searchItems) {
      if (player.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        mathGuery.add(player);
      }
    }
    return ListView.builder(
        itemCount: mathGuery.length,
        itemBuilder: (context, index) {
          var result = mathGuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> mathGuery = [];
    for (var player in searchItems) {
      if (player.toLowerCase().contains(
            query.toLowerCase(),
          )) {
        mathGuery.add(player);
      }
    }
    return ListView.builder(
        itemCount: mathGuery.length,
        itemBuilder: (context, index) {
          var result = mathGuery[index ];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
