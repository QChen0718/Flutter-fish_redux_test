import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/sharejl/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SharejlPage extends Page<SharejlState, Map<String, dynamic>> {
  SharejlPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SharejlState>(
                adapter: NoneConn<SharejlState>()+SharejlAdapter(),
                slots: <String, Dependent<SharejlState>>{
                }),
            middleware: <Middleware<SharejlState>>[
            ],);

}
