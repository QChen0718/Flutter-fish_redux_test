import 'package:fish_redux/fish_redux.dart';

class PosterDetailState implements Cloneable<PosterDetailState> {

  @override
  PosterDetailState clone() {
    return PosterDetailState();
  }
}

PosterDetailState initState(Map<String, dynamic> args) {
  return PosterDetailState();
}
