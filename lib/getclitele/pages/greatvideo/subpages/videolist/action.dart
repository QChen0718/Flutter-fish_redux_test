import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/videolistcell/state.dart';

//TODO replace with your own action
enum VideoListAction { action,init ,refresh, load}

class VideoListActionCreator {
  static Action onAction() {
    return const Action(VideoListAction.action);
  }
  static Action onInit(List<VideoListCellState>liststate) {
    return Action(VideoListAction.init,payload: liststate);
  }
  static Action onRefresh(){
    return Action(VideoListAction.refresh);
  }
  static Action onLoad(){
    return Action(VideoListAction.load);
  }
}
