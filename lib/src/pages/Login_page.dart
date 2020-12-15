import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final size = MediaQuery.of(context).size;
    //
    //
    return Scaffold(
        body: Stack(
      children: [_crearFondo(context), _loginForm(size)],
    ));
  }
}

Widget _loginForm(Size size) {
  //
  return SingleChildScrollView(
    child: Column(
      children: [
        //
        SafeArea(
            child: Container(
          height: 200.0,
        )),
        //
        Container(
          width: size.width * 0.80,
          padding: EdgeInsets.symmetric(vertical: 30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 5.0),
          ),
          //
          child: Column(children: [
            Text(
              'Ingreso',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            _loginEmail(),
            _loginContrasena()
          ]),
        )
      ],
    ),
  );
}

Widget _loginEmail() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(
            Icons.alternate_email,
            color: Colors.deepPurple,
          ),
          hintText: 'ejemplo@gmail.com',
          labelText: 'Correro electronico'),
    ),
  );
}

Widget _loginContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock_open,
            color: Colors.deepPurple,
          ),
          labelText: 'Contraseña'),
    ),
  );
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
