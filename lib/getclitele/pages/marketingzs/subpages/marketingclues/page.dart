import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/marketingclues/adapter.dart';

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
                adapter: NoneConn<MarketingCluesState>() + MarketingCluesAdapter(),
                slots: <String, Dependent<MarketingCluesState>>{
                }),
            middleware: <Middleware<MarketingCluesState>>[
            ],);

}
