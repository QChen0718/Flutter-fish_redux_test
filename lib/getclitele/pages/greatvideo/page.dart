import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class GreatVideoPage extends Page<GreatVideoState, Map<String, dynamic>> {
  @override
  GreatVideoStateKeepAliveStf createState() => GreatVideoStateKeepAliveStf();
  GreatVideoPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<GreatVideoState>(
                adapter: null,
                slots: <String, Dependent<GreatVideoState>>{
                }),
            middleware: <Middleware<GreatVideoState>>[
            ],);

}
