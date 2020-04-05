import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StatisticsAction { action,init }

class StatisticsActionCreator {
  static Action onAction() {
    return const Action(StatisticsAction.action);
  }
  static Action onInit(List<dynamic>liststate) {
    return Action(StatisticsAction.init,payload: liststate);
  }
}
