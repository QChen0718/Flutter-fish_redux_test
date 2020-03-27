import 'package:fish_redux/fish_redux.dart';

import 'components/nomalcell/state.dart';

//TODO replace with your own action
enum MyAction { action,init }

class MyActionCreator {
  static Action onAction() {
    return const Action(MyAction.action);
  }
  static Action onInit(List<NomalcellState> nomalstate){
    return Action(MyAction.init,payload: nomalstate);
  }
}
