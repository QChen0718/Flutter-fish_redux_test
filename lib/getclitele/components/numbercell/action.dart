import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CliteleNumberAction { action }

class CliteleNumberActionCreator {
  static Action onAction() {
    return const Action(CliteleNumberAction.action);
  }
}
