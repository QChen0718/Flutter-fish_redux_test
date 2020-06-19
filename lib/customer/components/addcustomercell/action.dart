import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum AddCustomerCellAction { action }

class AddCustomerCellActionCreator {
  static Action onAction() {
    return const Action(AddCustomerCellAction.action);
  }
}
