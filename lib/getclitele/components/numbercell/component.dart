import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CliteleNumberComponent extends Component<CliteleNumberState> {
  CliteleNumberComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CliteleNumberState>(
                adapter: null,
                slots: <String, Dependent<CliteleNumberState>>{
                }),);

}
