import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { action , update , jumpHome}

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action);
  }
  static Action onUpdate(){
    return Action(LoginAction.update);
  }
  static Action onJumpHome(){
    return Action(LoginAction.jumpHome);
  }
}
