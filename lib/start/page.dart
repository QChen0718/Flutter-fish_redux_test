import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StartPage extends Page<StartState, Map<String, dynamic>> {
  StartPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StartState>(
                adapter: null,
                slots: <String, Dependent<StartState>>{
                }),
            middleware: <Middleware<StartState>>[
            ],);

}
