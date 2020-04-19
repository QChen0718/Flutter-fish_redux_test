import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/myvideo/state.dart';

//TODO replace with your own action
enum VideoDetailAction { action,init }

class VideoDetailActionCreator {
  static Action onAction() {
    return const Action(VideoDetailAction.action);
  }
  static Action onInit(MyVideoState videoState) {
    return Action(VideoDetailAction.init,payload: videoState);
  }
}
