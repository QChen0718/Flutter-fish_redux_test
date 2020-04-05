import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HotFinancialWordeCellComponent extends Component<HotFinancialWordeCellState> {
  HotFinancialWordeCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HotFinancialWordeCellState>(
                adapter: null,
                slots: <String, Dependent<HotFinancialWordeCellState>>{
                }),);

}
