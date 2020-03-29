import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CustomerListcellAction { action }

class CustomerListcellActionCreator {
  static Action onAction() {
    return const Action(CustomerListcellAction.action);
  }
}
