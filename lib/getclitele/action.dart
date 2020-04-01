import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NewGetCliteleAction { action }

class NewGetCliteleActionCreator {
  static Action onAction() {
    return const Action(NewGetCliteleAction.action);
  }
}
