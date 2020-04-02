import 'package:fish_redux/fish_redux.dart';

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
                adapter: null,
                slots: <String, Dependent<StatisticsState>>{
                }),
            middleware: <Middleware<StatisticsState>>[
            ],);

}
