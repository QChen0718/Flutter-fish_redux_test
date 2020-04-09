import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProductRecommendAction { action }

class ProductRecommendActionCreator {
  static Action onAction() {
    return const Action(ProductRecommendAction.action);
  }
}
