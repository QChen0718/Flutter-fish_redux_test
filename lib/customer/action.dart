import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CustomerAction { action }

class CustomerActionCreator {
  static Action onAction() {
    return const Action(CustomerAction.action);
  }
}
