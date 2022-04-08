import 'package:app_integradora/buscador.dart';
import 'package:app_integradora/log_In.dart';
import 'package:app_integradora/main.dart';
import 'package:flutter/material.dart';

class Cuenta extends StatefulWidget {
  const Cuenta({Key? key}) : super(key: key);

  @override
  State<Cuenta> createState() => _CuentaState();
}

class _CuentaState extends State<Cuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100.0),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [new BoxShadow(
                color: Colors.black,
                offset: Offset(1.0,5.0,),
                blurRadius: 3.0,
              )],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("images/cuenta_logo.jpg"),
              ),
            ),
          ),
          Container(
            child: const Text("Sarahi Rivera", style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: const Text("2020222@utsh.edu.mx", style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),),
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
              child: SizedBox.fromSize(
                size: Size(100.0, 50.0),
                child: RaisedButton(
                  color: Color.fromRGBO(164, 255, 165, 100),
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Inicio()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  child: const Text(
                    "Exit",
                    style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
