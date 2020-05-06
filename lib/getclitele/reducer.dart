import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<NewGetCliteleState> buildReducer() {
  return asReducer(
    <Object, Reducer<NewGetCliteleState>>{
      NewGetCliteleAction.action: _onAction,
      NewGetCliteleAction.init: _onInit,
    },
  );
}

NewGetCliteleState _onAction(NewGetCliteleState state, Action action) {
  final NewGetCliteleState newState = state.clone();
  return newState;
}

NewGetCliteleState _onInit(NewGetCliteleState state, Action action) {
  final NewGetCliteleState newState = state.clone();
  if(action.payload['clitelestate'] != null){
    newState.cliteleNumberState = action.payload['clitelestate'];
  }else{
    newState.markingCellState = action.payload['markingcellstate'];
  }

  return newState;
}