import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PosterDetailPage extends Page<PosterDetailState, Map<String, dynamic>> {
  PosterDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PosterDetailState>(
                adapter: null,
                slots: <String, Dependent<PosterDetailState>>{
                }),
            middleware: <Middleware<PosterDetailState>>[
            ],);

}
