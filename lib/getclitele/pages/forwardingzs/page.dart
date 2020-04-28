import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzscontent/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzscontent/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzsheader/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/forwardingzsheader/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ForwardingZSPage extends Page<ForwardingZSState, Map<String, dynamic>> {
  ForwardingZSPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ForwardingZSState>(
                adapter: null,
                slots: <String, Dependent<ForwardingZSState>>{
                  'forwardingheader':ForWardingzsCommentor() + ForWardingzsHeaderComponent(),
                  'forwardingcontent':ForWardingzsContentCommentor() + ForWardingzsContentComponent()
                }),
            middleware: <Middleware<ForwardingZSState>>[
            ],);

}
