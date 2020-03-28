//adapter 关联 component 与 page
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/components/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/cjzb/state.dart';

class CjzbAdapter extends SourceFlowAdapter<CjzbState> {
  static const cjzbcellType = 'cjzbcell';
  CjzbAdapter()
      : super(
          pool: <String, Component<Object>>{
              cjzbcellType : CjcellComponent()
          },
      );
}

