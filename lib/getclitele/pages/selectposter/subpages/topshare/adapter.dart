import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/topsharecell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/topshare/state.dart';

class TopShareAdapter extends SourceFlowAdapter<TopShareState> {
  static const topsharecell = 'topsharecell';
  TopShareAdapter()
      : super(
          pool: <String, Component<Object>>{
            topsharecell:TopShareCellComponent()
          },

    );
}
