import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CjcellComponent extends Component<CjcellState> {
  CjcellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CjcellState>(
                adapter: null,
                slots: <String, Dependent<CjcellState>>{
                }),);

}
