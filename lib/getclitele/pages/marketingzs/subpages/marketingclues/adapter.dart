import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/marketinglistcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/marketingclues/state.dart';

class MarketingCluesAdapter extends SourceFlowAdapter<MarketingCluesState> {
  static const marketingcell = "marketingcell";
  MarketingCluesAdapter()
      : super(
          pool: <String, Component<Object>>{
            marketingcell:MarketingListcellComponent()
          },

  );
}

