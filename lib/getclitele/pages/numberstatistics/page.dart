import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NumberStatisticsPage extends Page<NumberStatisticsState, Map<String, dynamic>> {
  NumberStatisticsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NumberStatisticsState>(
                adapter: null,
                slots: <String, Dependent<NumberStatisticsState>>{
                }),
            middleware: <Middleware<NumberStatisticsState>>[
            ],);

}
