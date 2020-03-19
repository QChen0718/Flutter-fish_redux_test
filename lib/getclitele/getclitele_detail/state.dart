import 'package:fish_redux/fish_redux.dart';

class GetCliteleDetailState implements Cloneable<GetCliteleDetailState> {

  @override
  GetCliteleDetailState clone() {
    return GetCliteleDetailState();
  }
}

GetCliteleDetailState initState(Map<String, dynamic> args) {
  return GetCliteleDetailState();
}
