import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ScreeningComponent extends Component<ScreeningState> {
  ScreeningComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ScreeningState>(
                adapter: null,
                slots: <String, Dependent<ScreeningState>>{
                }),);

}
