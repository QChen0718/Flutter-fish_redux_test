import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ForWardingzsContentComponent extends Component<ForWardingzsContentState> {
  ForWardingzsContentComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ForWardingzsContentState>(
                adapter: null,
                slots: <String, Dependent<ForWardingzsContentState>>{
                }),);

}
