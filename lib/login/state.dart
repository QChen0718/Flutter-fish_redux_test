import 'package:fish_redux/fish_redux.dart';

class LoginState implements Cloneable<LoginState> {
  String backimagename;
  @override
  LoginState clone() {
    return LoginState()
    ..backimagename = backimagename;
  }
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState()
  ..backimagename = 'images/loginback.png';
}
