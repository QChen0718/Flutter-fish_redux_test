import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/hotfinancialword/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HotFinancialWordPage extends Page<HotFinancialWordState, Map<String, dynamic>> {
  HotFinancialWordPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HotFinancialWordState>(
                adapter: NoneConn<HotFinancialWordState>() + HotFinancialWordAdapter(),
                slots: <String, Dependent<HotFinancialWordState>>{
                }),
            middleware: <Middleware<HotFinancialWordState>>[
            ],);

}
