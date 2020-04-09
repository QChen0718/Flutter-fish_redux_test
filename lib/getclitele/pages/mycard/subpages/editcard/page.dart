import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/editcardheader/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/editcardheader/state.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class EditCardPage extends Page<EditCardState, Map<String, dynamic>> {
  EditCardPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<EditCardState>(
                adapter: null,
                slots: <String, Dependent<EditCardState>>{
                  'photoheader':EditCardHeaderviewConnector() + EditCardHeaderviewComponent()
                }),
            middleware: <Middleware<EditCardState>>[
            ],);

}
