import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/adapter.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/components/component.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/components/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class UsersetPage extends Page<UsersetState, Map<String, dynamic>> {
  UsersetPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<UsersetState>(
                adapter: NoneConn<UsersetState>() + UsersetAdapter(),
                slots: <String, Dependent<UsersetState>>{
//                  'itemcell':ItemConnector() + ItemComponent()
                }),
            middleware: <Middleware<UsersetState>>[
            ],);

}
