import 'package:app_integradora/categorias.dart';
import 'package:flutter/material.dart';

class Buscador extends StatefulWidget {
  const Buscador({Key? key}) : super(key: key);

  @override
  State<Buscador> createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: Colors.lightGreen,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
          )
        ],
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    "Maquillaje",
    "Accesorios",
    "Rimel",
    "Collar",
    "Aretes",
    "BeautyBlender",
    "Scrunchie"
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          })
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(child: Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(100.0),
        child: Text("Hemos encontrado tu resultado"),
      ),
      Container(
          padding: EdgeInsets.all(10.0),
          child: SizedBox.fromSize(
            size: Size(100.0, 50.0),
            child: RaisedButton(
              color: Color.fromRGBO(164, 255, 165, 100),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Categorias()),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              child: const Text(
                "Ir ahi",
                style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),
              ),
            ),
          )),
    ],)
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;

            showSuggestions(context);
          },
        );
      },
    );
  }
}
