import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/myvideo/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/myvideo/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class VideoDetailPage extends Page<VideoDetailState, Map<String, dynamic>> {

  VideoDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<VideoDetailState>(
                adapter: null,
                slots: <String, Dependent<VideoDetailState>>{
                  'myvideo':MyVideoConnector()+MyVideoComponent()
                }),
            middleware: <Middleware<VideoDetailState>>[
            ],);

}
