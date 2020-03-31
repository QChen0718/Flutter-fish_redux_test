import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class GetCliteleDetailPage extends Page<GetCliteleDetailState, Map<String, dynamic>> {
  GetCliteleDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<GetCliteleDetailState>(
                adapter: null,
                slots: <String, Dependent<GetCliteleDetailState>>{
                }),
            middleware: <Middleware<GetCliteleDetailState>>[
            ],);

}
