import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoDetailAction { action,init }

class VideoDetailActionCreator {
  static Action onAction() {
    return const Action(VideoDetailAction.action);
  }
  static Action onInit() {
    return Action(VideoDetailAction.init);
  }
}
