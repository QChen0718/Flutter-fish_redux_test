import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class YCFClimatePage extends Page<YCFClimateState, Map<String, dynamic>> {
  YCFClimatePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<YCFClimateState>(
                adapter: null,
                slots: <String, Dependent<YCFClimateState>>{
                }),
            middleware: <Middleware<YCFClimateState>>[
            ],);

}
