import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class StaticsSectionComponent extends Component<StaticsSectionState> {
  StaticsSectionComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<StaticsSectionState>(
                adapter: null,
                slots: <String, Dependent<StaticsSectionState>>{
                }),);

}
