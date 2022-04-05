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
