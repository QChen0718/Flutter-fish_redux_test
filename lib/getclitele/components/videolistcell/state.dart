import 'package:fish_redux/fish_redux.dart';

class VideoListCellState implements Cloneable<VideoListCellState> {

  String coverimagename;
  String datestr;
  String videotitle;
  int videoid;
  @override
  VideoListCellState clone() {
    return VideoListCellState()
    ..coverimagename = coverimagename
    ..datestr = datestr
    ..videotitle = videotitle
    ..videoid = videoid;
  }
}

VideoListCellState initState(Map<String, dynamic> args) {
  return VideoListCellState();
}
