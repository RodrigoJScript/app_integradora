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
      body: Column(
        children: <Widget>[
          Icon(
            Icons.account_circle_outlined,
            size: 100.0,
          ),
          Text("UserName"),
          Text("Email"),
          RaisedButton(onPressed: () {
            // TODO: Codigo para salir de la cuenta
            5 + 5;
          })
        ],
      ),
    );
  }
}
