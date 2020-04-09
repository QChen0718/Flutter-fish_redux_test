import 'package:fish_redux/fish_redux.dart';

class EditCardState implements Cloneable<EditCardState> {

  @override
  EditCardState clone() {
    return EditCardState();
  }
}

EditCardState initState(Map<String, dynamic> args) {
  return EditCardState();
}
