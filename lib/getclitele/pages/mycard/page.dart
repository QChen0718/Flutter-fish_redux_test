import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MyCardPage extends Page<MyCardState, Map<String, dynamic>> {
  MyCardPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MyCardState>(
                adapter: null,
                slots: <String, Dependent<MyCardState>>{
                }),
            middleware: <Middleware<MyCardState>>[
            ],);

}
