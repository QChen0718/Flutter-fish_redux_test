import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CliteleItemCellComponent extends Component<CliteleItemCellState> {
  CliteleItemCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CliteleItemCellState>(
                adapter: null,
                slots: <String, Dependent<CliteleItemCellState>>{
                }),);

}
