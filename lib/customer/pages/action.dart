import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CustomerDetailAction { action }

class CustomerDetailActionCreator {
  static Action onAction() {
    return const Action(CustomerDetailAction.action);
  }
}
