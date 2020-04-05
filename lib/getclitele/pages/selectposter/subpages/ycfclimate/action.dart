import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum YCFClimateAction { action }

class YCFClimateActionCreator {
  static Action onAction() {
    return const Action(YCFClimateAction.action);
  }
}
