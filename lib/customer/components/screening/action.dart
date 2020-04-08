import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ScreeningAction { action ,selectItems,reset}

class ScreeningActionCreator {
  static Action onAction(int index) {
    return  Action(ScreeningAction.action,payload: index);
  }
  static Action onSelectItems(Map<String,dynamic> indexpath){
    return Action(ScreeningAction.selectItems,payload: indexpath);
  }
  static Action onReset(){
    return Action(ScreeningAction.reset);
  }
}
