import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PushMessageComponent extends Component<PushMessageState> {
  PushMessageComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PushMessageState>(
                adapter: null,
                slots: <String, Dependent<PushMessageState>>{
                }),);

}
