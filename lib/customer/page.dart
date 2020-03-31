import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/customer/adapter.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/filter/component.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/filter/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/screening/component.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/screening/state.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/searchbar/component.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/searchbar/state.dart';

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
                adapter: NoneConn<CustomerState>() + CustomerAdapter(),
                slots: <String, Dependent<CustomerState>>{
                  'searchbar':SearchBarConnector() + SearchBarComponent(),
                  'filter':FilterConnector() + FilterComponent(),
                  'screening':ScreeningConnector() + ScreeningComponent()
                }),
            middleware: <Middleware<CustomerState>>[
            ],);

}
