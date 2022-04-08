import 'package:app_integradora/log_In.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class EstadoAppConectionFirebase extends StatefulWidget{
  @override
  State<EstadoAppConectionFirebase> createState() => _EstadoAppConectionFirebase();

}

class _EstadoAppConectionFirebase extends State<EstadoAppConectionFirebase> {
  //Inicializar FirebaseApp
  Future<FirebaseApp>_initializeFirebase() async{
    FirebaseApp firebaseApp=await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done){
            return Inicio();
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}