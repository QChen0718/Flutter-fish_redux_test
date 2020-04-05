import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/statistics/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StatisticsPage extends Page<StatisticsState, Map<String, dynamic>> {
  StatisticsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StatisticsState>(
                adapter: NoneConn<StatisticsState>() + StatisticsAdapter(),
                slots: <String, Dependent<StatisticsState>>{
                }),
            middleware: <Middleware<StatisticsState>>[
            ],);

}
