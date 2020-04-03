import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/sharejlcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/sharejl/state.dart';

class SharejlAdapter extends SourceFlowAdapter<SharejlState> {
  static const sharejlcell = 'sharejlcell';
  SharejlAdapter()
      : super(
          pool: <String, Component<Object>>{
            sharejlcell : SharejlCellComponent()
          },
          );
}

