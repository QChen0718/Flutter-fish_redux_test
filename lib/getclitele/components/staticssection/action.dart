import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum StaticsSectionAction { action }

class StaticsSectionActionCreator {
  static Action onAction() {
    return const Action(StaticsSectionAction.action);
  }
}
