import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController nameController = TextEditingController();
  String fullName = "";
  bool valueFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 200),
              child: Image.network(
                  "data:image/jpeg;base64,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"),
            ),
            Container(
              child: const Text("PRESSIE"),
              padding: const EdgeInsets.all(20.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Nombre"),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                  });
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Contraseña"),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                  });
                },
              ),
            ),
            Row(children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 70.0),
                child: Text(
                  'Acepto los terminos y condiciones: ',
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blue,
                value: valueFirst,
                onChanged: (bool? value) {
                  valueFirst = true;
                  setState(() {
                    activate();
                  });
                },
              ),
            ]),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () => 5 + 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
