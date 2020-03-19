import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SubItemPage extends Page<SubItemState, Map<String, dynamic>> {
  SubItemPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SubItemState>(
                adapter: null,
                slots: <String, Dependent<SubItemState>>{
                }),
            middleware: <Middleware<SubItemState>>[
            ],);

}
