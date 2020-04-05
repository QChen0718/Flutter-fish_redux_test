import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SelectPosterPage extends Page<SelectPosterState, Map<String, dynamic>> {

  @override
  SelectPosterStateKeepAliveStf createState() => SelectPosterStateKeepAliveStf();
  SelectPosterPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SelectPosterState>(
                adapter: null,
                slots: <String, Dependent<SelectPosterState>>{
                }),
            middleware: <Middleware<SelectPosterState>>[
            ],);

}
