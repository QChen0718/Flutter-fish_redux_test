import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FilterAction {
  action,
  show,
  onpenDrawer,
  updateUI,
  statusUpdate,
  selectItem
}

class FilterActionCreator {
  static Action onAction(String index) {
    return  Action(FilterAction.action,payload: index);
  }
  static Action onShow(String selecttitle) {
    return Action(FilterAction.show,payload:selecttitle);
  }
  static Action onOpenDrawer(){
    return Action(FilterAction.onpenDrawer);
  }
  static Action onUpdateUI(int tag){
    return Action(FilterAction.updateUI,payload: tag);
  }
  static Action onStatusUpdate(String title){
    return Action(FilterAction.statusUpdate,payload: title);
  }
  static Action onSelectItem(String selecttitle,int index) {
    return Action(FilterAction.selectItem,payload: {'name':selecttitle,'index':index});
  }
}
