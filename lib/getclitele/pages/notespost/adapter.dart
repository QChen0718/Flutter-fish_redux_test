import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/components/notelistcell/component.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/notespost/state.dart';

class NoteSpostAdapter extends SourceFlowAdapter<NotePostState> {
  static String cellid;
  NoteSpostAdapter()
      : super(
          pool: <String, Component<Object>>{
              cellid : NoteListCellComponent()
          },
  );
}


