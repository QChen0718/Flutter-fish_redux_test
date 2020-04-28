import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NoteListCellComponent extends Component<NoteListCellState> {
  NoteListCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NoteListCellState>(
                adapter: null,
                slots: <String, Dependent<NoteListCellState>>{
                }),);

}
