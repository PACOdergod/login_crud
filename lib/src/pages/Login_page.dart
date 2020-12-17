import 'package:flutter/material.dart';
import 'package:form_app1/src/controllers/login_controller.dart';

//Controladores para los campos de texto
final TextEditingController _emailController =
    LoginController().emailController;
final TextEditingController _passwordController =
    LoginController().passwordController;

//
//
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    final size = MediaQuery.of(context).size;
    //
    return Scaffold(
        body: Stack(
      children: [_crearFondo(context), _loginForm(size, context)],
    ));
  }
}

//
//
Widget _loginForm(Size size, BuildContext context) {
  //
  return SingleChildScrollView(
    child: Column(
      children: [
        //
        SafeArea(
            child: Container(
          height: 180.0,
        )),
        //
        Container(
          width: size.width * 0.80,
          padding: EdgeInsets.symmetric(vertical: 30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          //
          child: Column(children: [
            Text(
              'Ingreso',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            _loginEmail(),
            SizedBox(height: 20.0),
            _loginContrasena(),
            SizedBox(height: 20.0),
            _loginBoton(context)
          ]),
        ),
        SizedBox(height: 20.0),
        Text('Olvido contraseña'),
        SizedBox(height: 50.0)
      ],
    ),
  );
}

Widget _loginEmail() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
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
      controller: _passwordController,
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

Widget _loginBoton(BuildContext context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    color: Colors.deepPurple,
    textColor: Colors.white,
    //
    onPressed: () {
      // print(_emailController.text);
      // print(_passwordController.text);
      FocusScope.of(context).requestFocus(new FocusNode());
    },
    //
    child: Container(
      child: Text(
        'Ingresar',
        style: TextStyle(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
    ),
  );
}

Widget _crearFondo(BuildContext context) {
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
