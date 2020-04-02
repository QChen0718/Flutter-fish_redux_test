import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MarketingListcellComponent extends Component<MarketingListcellState> {
  MarketingListcellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MarketingListcellState>(
                adapter: null,
                slots: <String, Dependent<MarketingListcellState>>{
                }),);

}
