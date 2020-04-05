import 'package:fish_redux/fish_redux.dart';

class StaticsSectionState implements Cloneable<StaticsSectionState> {
  String sectionstr = '访客排行';
  String usertitle = '用户';
  String weeknumber = '本周次数';
  String sumnumber = '总次数';
  @override
  StaticsSectionState clone() {
    return StaticsSectionState()
    ..sectionstr = sectionstr
    ..usertitle = usertitle
    ..weeknumber = weeknumber
    ..sumnumber = sumnumber;
  }
}

StaticsSectionState initState(Map<String, dynamic> args) {
  return StaticsSectionState();
}
