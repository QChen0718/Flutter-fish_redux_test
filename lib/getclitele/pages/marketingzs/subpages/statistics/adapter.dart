import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticsheadercell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticslistcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/staticssection/component.dart';

import 'reducer.dart';
import 'state.dart';

class StatisticsAdapter extends SourceFlowAdapter<StatisticsState> {
  static const header = "headercell";
  static const section = "sectioncell";
  static const statisticscell = "statisticscell";
  StatisticsAdapter()
      : super(
          pool: <String, Component<Object>>{
            header:StaticsHeaderComponent(),
            section:StaticsSectionComponent(),
            statisticscell:StaticsListcellComponent()
          },
          reducer: buildReducer(),
        );
}
