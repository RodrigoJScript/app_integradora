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
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200.0, right: 200.0, left: 200.0),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("images/cuenta_logo.jpg"),
              ),
            ),
          ),
          Text("UserName"),
          Text("Email"),
          RaisedButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Principal()));
          })
        ],
      ),
    );
  }
}
