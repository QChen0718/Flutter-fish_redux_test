import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SharejlCellComponent extends Component<SharejlCellState> {
  SharejlCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SharejlCellState>(
                adapter: null,
                slots: <String, Dependent<SharejlCellState>>{
                }),);

}
