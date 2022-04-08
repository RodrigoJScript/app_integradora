import 'package:app_integradora/buscador.dart';
import 'package:app_integradora/maquillaje.dart';
import 'package:flutter/material.dart';

import 'accesorios.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.lightGreen,
                    Colors.lightGreenAccent,
                    Colors.white
                  ],
                )),
            child: Column(
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 40),
                child: IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  iconSize: 35,
                  color: Colors.black45,
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  iconSize: 35,
                  color: Colors.black45,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Buscador()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  iconSize: 35,
                  color: Colors.black45,
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40),
                child: IconButton(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  iconSize: 35,
                  color: Colors.black45,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
          ),
          child: Center(
              child: InkWell(
                child: Image(
                  image: AssetImage(
                      "images/10.jpg"),
                  height: 200,
                  width: 400,
                  fit: BoxFit.cover,

                ),
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Maquillaje()),
              );
            },

          )),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
          ),
          child: Center(
              child: InkWell(
                child: Image(
                  image: AssetImage(
                      'images/6.jpg'),
                  height: 200,
                  width: 400,
                  fit: BoxFit.cover,
                ),
            splashColor: Colors.black26,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Accesorios()),
              );
            },

          )),
        ),
      ],
    )));
  }
}
