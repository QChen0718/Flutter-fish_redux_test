import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StartAction { action }

class StartActionCreator {
  static Action onAction() {
    return const Action(StartAction.action);
  }
}
