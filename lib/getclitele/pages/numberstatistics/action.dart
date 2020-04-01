import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NumberStatisticsAction { action }

class NumberStatisticsActionCreator {
  static Action onAction() {
    return const Action(NumberStatisticsAction.action);
  }
}
