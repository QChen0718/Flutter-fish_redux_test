import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MyPage extends Page<MyState, Map<String, dynamic>> {
  MyPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MyState>(
                adapter: null,
                slots: <String, Dependent<MyState>>{
                  'headerview':HeaderviewConnector() + HeaderviewComponent()
                }),
            middleware: <Middleware<MyState>>[
            ],);

}
