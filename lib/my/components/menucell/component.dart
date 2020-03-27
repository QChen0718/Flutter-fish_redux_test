import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MenucellComponent extends Component<MenucellState> {
  MenucellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MenucellState>(
                adapter: null,
                slots: <String, Dependent<MenucellState>>{
                }),);

}
