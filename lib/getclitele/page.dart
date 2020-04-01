import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NewGetClitelePage extends Page<NewGetCliteleState, Map<String, dynamic>> {
  NewGetClitelePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NewGetCliteleState>(
                adapter: null,
                slots: <String, Dependent<NewGetCliteleState>>{
                }),
            middleware: <Middleware<NewGetCliteleState>>[
            ],);

}
