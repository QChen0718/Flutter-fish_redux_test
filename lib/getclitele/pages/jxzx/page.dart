import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/cjzb/page.dart';

import 'package:flutter_fish_redux_router_qt/getclitele/pages/hotzx/page.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class GetClitelePage extends Page<GetCliteleState, Map<String, dynamic>> {

  @override
  GetCliteleStateKeepAliveStf createState() => GetCliteleStateKeepAliveStf();

  GetClitelePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<GetCliteleState>(
                adapter: null,
                slots: <String, Dependent<GetCliteleState>>{
                  'cjzb':CjzbPageConnector() + CjzbPage(),
                  'hotzx':HotzxPageConnector() + HotzxPage(),
                }),
            middleware: <Middleware<GetCliteleState>>[
            ],);

}
