import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CustomerDetailPage extends Page<CustomerDetailState, Map<String, dynamic>> {
  CustomerDetailPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CustomerDetailState>(
                adapter: null,
                slots: <String, Dependent<CustomerDetailState>>{
                }),
            middleware: <Middleware<CustomerDetailState>>[
            ],);

}
