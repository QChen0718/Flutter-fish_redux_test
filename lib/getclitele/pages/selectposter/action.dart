import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SelectPosterAction { action,update }

class SelectPosterActionCreator {
  static Action onAction() {
    return const Action(SelectPosterAction.action);
  }
  static Action onUpdate(Map<String,dynamic>datadict) {
    return Action(SelectPosterAction.update,payload: datadict);
  }
}
