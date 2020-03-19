import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/components/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/components/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/hotzx/subwidget/page.dart';

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
                  'header':HeaderConnector() + HeaderComponent()
                }),
            middleware: <Middleware<HotzxState>>[
            ],);

}
