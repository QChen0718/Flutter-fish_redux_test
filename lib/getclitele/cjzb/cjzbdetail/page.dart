import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CjzbDetailPage extends Page<CjzbDetailState, Map<String, dynamic>> {
  CjzbDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CjzbDetailState>(
                adapter: null,
                slots: <String, Dependent<CjzbDetailState>>{
                }),
            middleware: <Middleware<CjzbDetailState>>[
            ],);

}
