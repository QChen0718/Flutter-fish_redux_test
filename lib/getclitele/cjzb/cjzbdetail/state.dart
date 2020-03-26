import 'package:fish_redux/fish_redux.dart';

class CjzbDetailState implements Cloneable<CjzbDetailState> {
  String weburl;
  @override
  CjzbDetailState clone() {
    return CjzbDetailState()
    ..weburl = weburl;
  }
}

CjzbDetailState initState(Map<String, dynamic> args) {
//  获取上个界面传过来的值
  String url = args['url'];
  return CjzbDetailState()
  ..weburl = url;
}
