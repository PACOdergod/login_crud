import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [_crearFondo(context)],
    ));
  }
}

Widget _crearFondo(BuildContext context) {
  //
  //
  final size = MediaQuery.of(context).size;
  //
  //
  final fondoMorado = Container(
    height: size.height * 0.5,
    width: double.infinity,
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
      Color.fromRGBO(63, 63, 156, 1.0),
      Color.fromRGBO(90, 70, 178, 1.0)
    ])),
  );

  final circulo = Container(
    height: 100.0,
    width: 100.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(255, 255, 255, 0.3)),
  );

  final nombre = Container(
    child: SafeArea(
      child: Column(
        children: [
          Icon(
            Icons.person_pin_circle,
            size: 100.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 10.0,
            width: double.infinity,
          ),
          Text(
            'PACO',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
    ),
  );

  return Stack(
    children: [
      fondoMorado,
      Positioned(
        child: circulo,
        top: 100.0,
        left: 40.0,
      ),
      Positioned(
        //Se puede estirar el circulo con el positioned
        child: circulo,
        top: 250.0,
        right: 20.0,
        left: 50.0,
      ),
      Positioned(
        child: circulo,
        top: 10.0,
        bottom: 70,
        right: 50.0,
      ),
      nombre
    ],
  );
}
