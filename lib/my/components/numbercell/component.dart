import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NumbercellComponent extends Component<NumbercellState> {
  NumbercellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NumbercellState>(
                adapter: null,
                slots: <String, Dependent<NumbercellState>>{
                }),);

}
