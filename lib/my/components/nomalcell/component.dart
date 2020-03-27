import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NomalcellComponent extends Component<NomalcellState> {
  NomalcellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NomalcellState>(
                adapter: null,
                slots: <String, Dependent<NomalcellState>>{
                }),);

}
