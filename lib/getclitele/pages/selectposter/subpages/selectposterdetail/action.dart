import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PosterDetailAction { action }

class PosterDetailActionCreator {
  static Action onAction() {
    return const Action(PosterDetailAction.action);
  }
}
