import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/myvideo/state.dart';


class VideoDetailState implements Cloneable<VideoDetailState> {

  String navtitle;
  String videourl;

  bool isFullScreen ;
  MyVideoState myVideoState;

  @override
  VideoDetailState clone() {
    return VideoDetailState()
    ..navtitle = navtitle
    ..myVideoState = myVideoState
    ..isFullScreen = isFullScreen
    ..videourl = videourl;
  }
}

VideoDetailState initState(Map<String, dynamic> args) {

  return VideoDetailState()
  ..navtitle = args['title'];
}
