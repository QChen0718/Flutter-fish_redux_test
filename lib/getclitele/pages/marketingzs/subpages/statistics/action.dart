import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StatisticsAction { action }

class StatisticsActionCreator {
  static Action onAction() {
    return const Action(StatisticsAction.action);
  }
}
