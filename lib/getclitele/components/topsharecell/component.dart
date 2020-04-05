import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TopShareCellComponent extends Component<TopShareCellState> {
  TopShareCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TopShareCellState>(
                adapter: null,
                slots: <String, Dependent<TopShareCellState>>{
                }),);

}
