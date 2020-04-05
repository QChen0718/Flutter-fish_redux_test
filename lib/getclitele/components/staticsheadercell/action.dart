import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StaticsHeaderAction { action }

class StaticsHeaderActionCreator {
  static Action onAction() {
    return const Action(StaticsHeaderAction.action);
  }
}
