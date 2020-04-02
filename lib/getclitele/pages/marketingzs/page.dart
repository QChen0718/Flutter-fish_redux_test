import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MarketingZSPage extends Page<MarketingZSState, Map<String, dynamic>> {
  @override
  MarketingZSStateKeepAliveStf createState() => MarketingZSStateKeepAliveStf();
  MarketingZSPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MarketingZSState>(
                adapter: null,
                slots: <String, Dependent<MarketingZSState>>{
                }),
            middleware: <Middleware<MarketingZSState>>[
            ],);

}
