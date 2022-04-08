import 'package:app_integradora/log_In.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
              center: Alignment.center,
              radius: .9,
              colors: [
                Colors.lightGreen,
                Colors.lightGreenAccent,
                Colors.white
              ],
            )),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(top: 200.0, right: 200.0, left: 200.0),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      boxShadow: [new BoxShadow(
                        color: Colors.black,
                        offset: Offset(1.0,5.0,),
                        blurRadius: 3.0,
                      )],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("images/logo.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "PRESSIE",
                      style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: const Text(
                      "Bienvenido",
                      style: TextStyle(fontFamily: "Sitka", fontSize: 20.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  Container(
                    child: SizedBox.fromSize(
                      size: Size(100.0, 50.0),
                      child: RaisedButton(
                        color: Color.fromRGBO(164, 255, 165, 100),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Inicio()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        child: const Text(
                          "Log In",
                          style:
                              TextStyle(fontFamily: "Perpetua", fontSize: 30.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
