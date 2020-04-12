import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/videolistcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videolist/adapter.dart';

class VideoListState extends MutableSource implements Cloneable<VideoListState> {

  List<VideoListCellState> liststate;
  int pageSize;
  int pageIndex;
  int type;
  @override
  VideoListState clone() {
    return VideoListState()
    ..liststate = liststate
    ..pageIndex = pageIndex
    ..pageSize = pageSize
    ..type = type;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return liststate[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return VideoListAdapter.videocell;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => liststate?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    liststate[index] = data;
  }
}

VideoListState initState(Map<String, dynamic> args) {
  var type = args['type'];
  return VideoListState()
  ..pageSize = 10
  ..pageIndex = 1
  ..type = type;
}
