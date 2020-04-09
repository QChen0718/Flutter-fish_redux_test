import 'package:fish_redux/fish_redux.dart';

class ProductRecommendState implements Cloneable<ProductRecommendState> {

  @override
  ProductRecommendState clone() {
    return ProductRecommendState();
  }
}

ProductRecommendState initState(Map<String, dynamic> args) {
  return ProductRecommendState();
}
