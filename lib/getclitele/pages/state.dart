import 'package:fish_redux/fish_redux.dart';

class NewGetCliteleState implements Cloneable<NewGetCliteleState> {
  String navtitle;
  List<String> imagename;
  List<String> titles;
  List<Map<String,dynamic>> numberslist;
  String navrightbtnname;
  String numberbg;
  String numbericon;
  String numbertext;
  @override
  NewGetCliteleState clone() {
    return NewGetCliteleState()
    ..navtitle = navtitle
    ..imagename = imagename
    ..titles = titles
    ..navrightbtnname = navrightbtnname
    ..numberbg = numberbg
    ..numbericon = numbericon
    ..numbertext = numbertext;
  }
}

NewGetCliteleState initState(Map<String, dynamic> args) {
  List<String> imagename = ['images/item_gzs.webp','images/item_mp.webp',
    'images/item_tj.webp','images/item_cj.webp','images/item_hb.webp','images/item_video.webp',
    'images/item_zs.webp','images/item_ssf.webp','images/item_qd.webp'];
  List<String> titles = ['移动工作室','智能名片','产品推介','每日财经','精品海报','精彩视频','转发助手','随手发','敬请期待'];
  List<Map<String,dynamic>> numberslist = [
    {'days':'3','title':'日增','number':'0','desc':'累计客户(人)'},
    {'days':'17','title':'日增','number':'0','desc':'累计访问(人)'},
    {'days':'7','title':'日增','number':'0','desc':'累计发布(次)'},
    {'days':'3','title':'日增','number':'0','desc':'累计绑定客户数(人)'},
  ];
  return NewGetCliteleState()
  ..navtitle = '获客中心'
  ..imagename = imagename
  ..titles = titles
  ..navrightbtnname = 'images/nav_right_numbericon.webp'
  ..numberbg = 'images/number_bg.webp'
  ..numbericon = 'images/number_icon.webp'
  ..numbertext = '获客数据'
  ..numberslist = numberslist;
}
