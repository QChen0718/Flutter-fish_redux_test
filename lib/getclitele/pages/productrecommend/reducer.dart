import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProductRecommendState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProductRecommendState>>{
      ProductRecommendAction.action: _onAction,
    },
  );
}

ProductRecommendState _onAction(ProductRecommendState state, Action action) {
  final ProductRecommendState newState = state.clone();
  return newState;
}
