import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/hotfinancialwordcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/hotfinancialword/state.dart';

class HotFinancialWordAdapter extends SourceFlowAdapter<HotFinancialWordState> {
  static const hotfinancialwordcell = "hotfinancialwordcell";
  HotFinancialWordAdapter()
      : super(
          pool: <String, Component<Object>>{
            hotfinancialwordcell:HotFinancialWordeCellComponent()
          },

  );
}
