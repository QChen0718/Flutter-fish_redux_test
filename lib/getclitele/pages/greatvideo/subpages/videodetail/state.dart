import 'package:fish_redux/fish_redux.dart';
import 'package:video_player/video_player.dart';

class VideoDetailState implements Cloneable<VideoDetailState> {

  String navtitle;
  String videourl;
  VideoPlayerController playerController;
  @override
  VideoDetailState clone() {
    return VideoDetailState()
    ..navtitle = navtitle;
  }
}

VideoDetailState initState(Map<String, dynamic> args) {
  return VideoDetailState()
  ..navtitle = args['title'];
}
