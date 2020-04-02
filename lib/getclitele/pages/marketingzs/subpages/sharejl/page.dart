import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SharejlPage extends Page<SharejlState, Map<String, dynamic>> {
  SharejlPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SharejlState>(
                adapter: null,
                slots: <String, Dependent<SharejlState>>{
                }),
            middleware: <Middleware<SharejlState>>[
            ],);

}
