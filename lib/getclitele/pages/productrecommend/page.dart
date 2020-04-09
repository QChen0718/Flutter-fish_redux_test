import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProductRecommendPage extends Page<ProductRecommendState, Map<String, dynamic>> {
  ProductRecommendPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ProductRecommendState>(
                adapter: null,
                slots: <String, Dependent<ProductRecommendState>>{
                }),
            middleware: <Middleware<ProductRecommendState>>[
            ],);

}
