import 'package:flutter/material.dart';

class Maquillaje extends StatefulWidget {
  const Maquillaje({Key? key}) : super(key: key);

  @override
  State<Maquillaje> createState() => _MaquillajeState();
}

class _MaquillajeState extends State<Maquillaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAQUILLAJE"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 800.0, top: 40.0, right: 40.0, bottom: 20.0),
                    child: Image(
                      image: AssetImage('images/3.jpg'),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text("PALETA DE COLORES"),
                        ),
                        Container(
                          child: Text("200 PESOS"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 800.0, top: 40.0, right: 40.0, bottom: 20.0),
                    child: Image(
                      image: AssetImage('images/7.jpg'),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Text("BOLITA PARA MAQUILLAJE"),
                        ),
                        Container(
                          child: Text("60 PESOS"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
