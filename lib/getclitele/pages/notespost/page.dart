import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/notespost/adapter.dart';

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
                adapter: NoneConn<NotePostState>() + NoteSpostAdapter(),
                slots: <String, Dependent<NotePostState>>{
                }),
            middleware: <Middleware<NotePostState>>[
            ],);

}
