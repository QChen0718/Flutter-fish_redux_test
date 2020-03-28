import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/menucell/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/menucell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/nomalcell/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/nomalcell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/numbercell/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/numbercell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/ordercell/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/ordercell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/pushmessagecell/component.dart';
import 'package:flutter_fish_redux_router_qt/my/components/pushmessagecell/state.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/state.dart';

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
                  'headerview':HeaderviewConnector() + HeaderviewComponent(),
                  'numbercell':NumberConnector() + NumbercellComponent(),
                  'pushcell':PushConnectort() + PushMessageComponent(),
                  'ordercell':OrderConnector() + OrdercellComponent(),
                  'menucell':MenuConnector() + MenucellComponent(),
                  'nomalcell':NomalConnector() + NomalcellComponent()
                }),
            middleware: <Middleware<MyState>>[
            ],);

}
