import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/components/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/components/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'state.dart';
import 'state.dart';
import 'view.dart';

class CjzbPage extends Page<CjzbState, Map<String, dynamic>> {



  CjzbPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CjzbState>(
                adapter: null,
                slots: <String, Dependent<CjzbState>>{
                  'cell':  CjConnector() + CjcellComponent()
                }),
            middleware: <Middleware<CjzbState>>[
            ],);

}
