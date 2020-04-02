import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MarketingCluesPage extends Page<MarketingCluesState, Map<String, dynamic>> {
  MarketingCluesPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MarketingCluesState>(
                adapter: null,
                slots: <String, Dependent<MarketingCluesState>>{
                }),
            middleware: <Middleware<MarketingCluesState>>[
            ],);

}
