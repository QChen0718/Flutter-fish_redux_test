import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HotzxAction { action }

class HotzxActionCreator {
  static Action onAction() {
    return const Action(HotzxAction.action);
  }
}
