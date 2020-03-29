import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FilterAction { action,show }

class FilterActionCreator {
  static Action onAction() {
    return const Action(FilterAction.action);
  }
  static Action onShow(String selecttitle) {
    return Action(FilterAction.show,payload: selecttitle);
  }
}
