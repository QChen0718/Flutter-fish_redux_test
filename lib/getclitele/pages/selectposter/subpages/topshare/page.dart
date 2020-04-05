import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/topshare/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TopSharePage extends Page<TopShareState, Map<String, dynamic>> {
  TopSharePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TopShareState>(
                adapter: NoneConn<TopShareState>() + TopShareAdapter(),
                slots: <String, Dependent<TopShareState>>{
                }),
            middleware: <Middleware<TopShareState>>[
            ],);

}
