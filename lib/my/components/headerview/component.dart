import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/components/headerview/effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HeaderviewComponent extends Component<HeaderviewState> {
  HeaderviewComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HeaderviewState>(
                adapter: null,
                slots: <String, Dependent<HeaderviewState>>{
                }),);

}
