import 'package:fish_redux/fish_redux.dart';

class NumberStatisticsState implements Cloneable<NumberStatisticsState> {
  String nav_title;
  List<Map<String,dynamic>> titleStrArray = [
    {'title':'分享移动工作室','progress':0.2},
    {'title':'发布智能名片','progress':0.5},
    {'title':'产品推广','progress':0.7},
    {'title':'发布每日财经资讯','progress':0.3},
    {'title':'海报分享','progress':0.6},
    {'title':'发布精彩视频','progress':0.9},
    {'title':'转发助手分享','progress':0.2},
    {'title':'发布随手发','progress':0.5}
  ];
  List progressArray = [0.2,0.5,0.7,0.3,0.6,0.9,0.2,0.5];
  List<Map<String,dynamic>> titlestrArraydict = [
    {'icon':'images/statistics_icon1.webp','numbers':'128','desc':'累计获客(人)'},
    {'icon':'images/statistics_icon2.webp','numbers':'12','desc':'累计访问(人)'} ,
    {'icon':'images/statistics_icon3.webp','numbers':'8','desc':'周新增(人)'},
    {'icon':'images/statistics_icon4.webp','numbers':'900','desc':'新增成交(人)'}
  ];
  String numbersmap;
  String weeksum;
  String day;
  @override
  NumberStatisticsState clone() {
    return NumberStatisticsState()
    ..nav_title = nav_title
    ..numbersmap = numbersmap
    ..weeksum = weeksum
    ..day = day;
  }
}

NumberStatisticsState initState(Map<String, dynamic> args) {
  return NumberStatisticsState()
  ..nav_title = '数据统计'
  ..numbersmap = '数据总览'
  ..weeksum = '周累计'
  ..day = '昨日';
}
