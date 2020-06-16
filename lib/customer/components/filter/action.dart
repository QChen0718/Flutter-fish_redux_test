import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FilterAction { action,show,onpenDrawer}

class FilterActionCreator {
  static Action onAction(String index) {
    return  Action(FilterAction.action,payload: index);
  }
  static Action onShow(String selecttitle) {
    return Action(FilterAction.show,payload: selecttitle);
  }
  static Action onOpenDrawer(){
    return Action(FilterAction.onpenDrawer);
  }
}
