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
        body: ListView(
      prototypeItem: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
          Row(
            children: <Widget>[
              Image(
                  image: NetworkImage(
                      "https://w7.pngwing.com/pngs/591/502/png-transparent-logo-generic-drug-bank-bank-globe-service-payment.png")),
              Text("Pakash")
            ],
          ),
        ],
      ),
    ));
  }
}