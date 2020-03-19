import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CustomerPage extends Page<CustomerState, Map<String, dynamic>> {
  CustomerPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CustomerState>(
                adapter: null,
                slots: <String, Dependent<CustomerState>>{
                }),
            middleware: <Middleware<CustomerState>>[
            ],);

}
