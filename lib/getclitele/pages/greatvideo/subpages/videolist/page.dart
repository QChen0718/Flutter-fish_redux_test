import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videolist/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class VideoListPage extends Page<VideoListState, Map<String, dynamic>> {
  VideoListPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<VideoListState>(
                adapter: NoneConn<VideoListState>() + VideoListAdapter(),
                slots: <String, Dependent<VideoListState>>{
                }),
            middleware: <Middleware<VideoListState>>[
            ],);

}
