import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/components/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/components/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HotzxPage extends Page<HotzxState, Map<String, dynamic>> {
  HotzxPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HotzxState>(
                adapter: null,
                slots: <String, Dependent<HotzxState>>{
//                  关联子组件
                  'cells':HeaderConnector() + HeaderComponent()
                }),
            middleware: <Middleware<HotzxState>>[
            ],);

}
