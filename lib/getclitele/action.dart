import 'package:fish_redux/fish_redux.dart';

import 'components/numbercell/state.dart';

//TODO replace with your own action
enum NewGetCliteleAction { action,init }

class NewGetCliteleActionCreator {
  static Action onAction() {
    return Action(NewGetCliteleAction.action);
  }
  static Action onInit(dynamic stateDict) {
    return Action(NewGetCliteleAction.init,payload: stateDict);
  }
}
