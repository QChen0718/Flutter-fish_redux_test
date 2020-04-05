import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/marketinglistcell/state.dart';
import 'action.dart';
import 'state.dart';

Effect<MarketingCluesState> buildEffect() {
  return combineEffects(<Object, Effect<MarketingCluesState>>{
    MarketingCluesAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<MarketingCluesState> ctx) {
}

void _onInit(Action action, Context<MarketingCluesState> ctx) {
  List<MarketingListcellState> liststate = [];
  for(int i=0;i<10;i++ ){
    MarketingListcellState marketingListcellState = MarketingListcellState();
    marketingListcellState.headerphoto = 'images/header_photo.webp';
    marketingListcellState.username = 'Zoey';
    marketingListcellState.browsecontent = '财经早知道2019-10-22';
    marketingListcellState.date = '10-22 14:57';
    liststate.add(marketingListcellState);
  }
  ctx.dispatch(MarketingCluesActionCreator.onInit(liststate));
}