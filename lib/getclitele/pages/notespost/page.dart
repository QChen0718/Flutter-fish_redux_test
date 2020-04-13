import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class NotePostPage extends Page<NotePostState, Map<String, dynamic>> {
  NotePostPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<NotePostState>(
                adapter: null,
                slots: <String, Dependent<NotePostState>>{
                }),
            middleware: <Middleware<NotePostState>>[
            ],);

}
