import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/addcustomer/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class addcustomerPage extends Page<addcustomerState, Map<String, dynamic>> {
  addcustomerPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<addcustomerState>(
                adapter: NoneConn<addcustomerState>() + addcutomerAdapter(),
                slots: <String, Dependent<addcustomerState>>{
                }),
            middleware: <Middleware<addcustomerState>>[
            ],);

}
