import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/videolistcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videolist/state.dart';

class VideoListAdapter extends SourceFlowAdapter<VideoListState> {
  static const videocell = 'videocell';
  VideoListAdapter()
      : super(
          pool: <String, Component<Object>>{
            videocell : VideoListCellComponent()
          },

          );
}

