import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GreatVideoAction { action }

class GreatVideoActionCreator {
  static Action onAction() {
    return const Action(GreatVideoAction.action);
  }
}
