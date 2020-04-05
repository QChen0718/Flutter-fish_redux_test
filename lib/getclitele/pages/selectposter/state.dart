import 'package:fish_redux/fish_redux.dart';

class SelectPosterState implements Cloneable<SelectPosterState> {

  @override
  SelectPosterState clone() {
    return SelectPosterState();
  }
}

SelectPosterState initState(Map<String, dynamic> args) {
  return SelectPosterState();
}
