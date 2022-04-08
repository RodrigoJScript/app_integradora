import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_integradora/categorias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Inicio();
}

class _Inicio extends State<Inicio> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (ex) {
      if (ex.code == "user-not-found") {
        print("No user found for that email");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.center,
        colors: [Colors.lightGreen, Colors.lightGreenAccent, Colors.white],
      )),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(200.0),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("images/logo.jpg"),
                ),
              ),
            ),
            Container(
              child: const Text("PRESSIE"),
              padding: const EdgeInsets.all(20.0),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Contraseña"),
              ),
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
                      "Log In",
                      style: TextStyle(fontFamily: "Perpetua", fontSize: 30.0),
                    ),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
