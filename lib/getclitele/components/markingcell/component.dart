import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MarkingCellComponent extends Component<MarkingCellState> {
  MarkingCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MarkingCellState>(
                adapter: null,
                slots: <String, Dependent<MarkingCellState>>{
                }),);

}
