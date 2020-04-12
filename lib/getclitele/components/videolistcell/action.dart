import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum VideoListCellAction { action }

class VideoListCellActionCreator {
  static Action onAction() {
    return Action(VideoListCellAction.action);
  }
}
