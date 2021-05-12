import 'dart:async';

class LoginBloc {


  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  // recover Stream data
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passwordStream => _emailController.stream; 

  // insert values to the Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }
}
