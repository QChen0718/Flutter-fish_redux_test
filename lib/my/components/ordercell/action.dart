import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OrdercellAction { action }

class OrdercellActionCreator {
  static Action onAction() {
    return const Action(OrdercellAction.action);
  }
}
