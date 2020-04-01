import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/cliteleitemcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/cliteleitemcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/markingcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/markingcell/state.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/numbercell/component.dart';

import 'components/numbercell/state.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NewGetClitelePage extends Page<NewGetCliteleState, Map<String, dynamic>> {
  NewGetClitelePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NewGetCliteleState>(
                adapter: null,
                slots: <String, Dependent<NewGetCliteleState>>{
                  'numbercell':CliteleNumberConnector()+CliteleNumberComponent(),
                  'markingcell':MarkingCellConnector() + MarkingCellComponent(),
                  'cliteleitemcell':CliteleItemCellConnector() + CliteleItemCellComponent()
                }),
            middleware: <Middleware<NewGetCliteleState>>[
            ],);

}
