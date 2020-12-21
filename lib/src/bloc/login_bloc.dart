import 'dart:async';

class LoginBloc {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Escuchar los datos
  Stream<String> get getEmail => _emailController.stream;
  Stream<String> get getPassword => _passwordController.stream;

  //Insertar valores al stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}
