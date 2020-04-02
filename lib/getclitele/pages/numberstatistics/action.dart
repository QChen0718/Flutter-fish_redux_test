import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum NumberStatisticsAction { action , back}

class NumberStatisticsActionCreator {
  static Action onAction() {
    return const Action(NumberStatisticsAction.action);
  }
  static Action onBack() {
    return Action(NumberStatisticsAction.back);
  }
}
