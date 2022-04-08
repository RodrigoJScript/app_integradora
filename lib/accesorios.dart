import 'package:flutter/material.dart';

class Accesorios extends StatefulWidget {
  const Accesorios({Key? key}) : super(key: key);

  @override
  State<Accesorios> createState() => _AccesoriosState();
}

class _AccesoriosState extends State<Accesorios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ACCESORIOS"),
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
                      image: AssetImage('images/1.jpg'),
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
                          child: Text("COLLAR CORAZON"),
                        ),
                        Container(
                          child: Text("256 PESOS"),
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
                      image: AssetImage('images/2.jpg'),
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
                          child: Text("LIGA"),
                        ),
                        Container(
                          child: Text("25 PESOS"),
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
                      image: AssetImage('images/4.jpg'),
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
                          child: Text("ARETES"),
                        ),
                        Container(
                          child: Text("150 PESOS"),
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
                      image: AssetImage('images/5.jpg'),
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
                          child: Text("COLLAR CUARZO"),
                        ),
                        Container(
                          child: Text("128 PESOS"),
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
                      image: AssetImage('images/8.jpg'),
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
                          child: Text("PAQUETE TRES COLLARES"),
                        ),
                        Container(
                          child: Text("300 PESOS"),
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
