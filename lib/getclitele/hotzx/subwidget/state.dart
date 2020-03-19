import 'package:fish_redux/fish_redux.dart';

List<Map<String,dynamic>> data = [
  {'title':'移动工作室','imagename':''},
  {'title':'智能名片','imagename':''},
  {'title':'产品推介','imagename':''},
  {'title':'每日财经','imagename':''},
  {'title':'精品海报','imagename':''},
  {'title':'精彩视频','imagename':''},
];
class SubItemState implements Cloneable<SubItemState> {
  String pushtitle;

  SubItemState({this.pushtitle});

  @override
  SubItemState clone() {
    return SubItemState()
    ..pushtitle = pushtitle;
  }
}

SubItemState initState(Map<String, dynamic> args) {
  return SubItemState();
}
