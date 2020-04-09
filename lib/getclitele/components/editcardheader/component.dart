import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class EditCardHeaderviewComponent extends Component<EditCardHeaderviewState> {
  EditCardHeaderviewComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<EditCardHeaderviewState>(
                adapter: null,
                slots: <String, Dependent<EditCardHeaderviewState>>{
                }),);

}
