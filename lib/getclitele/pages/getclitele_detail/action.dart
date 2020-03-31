import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GetCliteleDetailAction { action }

class GetCliteleDetailActionCreator {
  static Action onAction() {
    return const Action(GetCliteleDetailAction.action);
  }
}
