import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ProductRecommendState> buildEffect() {
  return combineEffects(<Object, Effect<ProductRecommendState>>{
    ProductRecommendAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ProductRecommendState> ctx) {
}
