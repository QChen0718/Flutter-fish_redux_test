import 'package:fish_redux/fish_redux.dart';

class NewGetCliteleState implements Cloneable<NewGetCliteleState> {
  String navtitle;
  List<Map<String,dynamic>> items;
  List<Map<String,dynamic>> numberslist;
  String navrightbtnname;
  String numberbg;
  String numbericon;
  String numbertext;
  @override
  NewGetCliteleState clone() {
    return NewGetCliteleState()
    ..navtitle = navtitle
    ..items = items
    ..navrightbtnname = navrightbtnname
    ..numberbg = numberbg
    ..numbericon = numbericon
    ..numbertext = numbertext;
  }
}

NewGetCliteleState initState(Map<String, dynamic> args) {
  List<Map<String,dynamic>> items = [
    {'imagename':'images/item_gzs.webp','title':'移动工作室'},
  {'imagename':'images/item_mp.webp','title':'智能名片'},
  {'imagename':'images/item_tj.webp','title':'产品推介'},
  {'imagename':'images/item_cj.webp','title':'每日财经'},
  {'imagename':'images/item_hb.webp','title':'精品海报'},
  {'imagename':'images/item_video.webp','title':'精彩视频'},
  {'imagename':'images/item_zs.webp','title':'转发助手'},
  {'imagename':'images/item_ssf.webp','title':'随手发'},
  {'imagename':'images/item_qd.webp','title':'敬请期待'}];
  List<Map<String,dynamic>> numberslist = [
    {'days':'3','title':'日增','number':'0','desc':'累计客户(人)'},
    {'days':'17','title':'日增','number':'0','desc':'累计访问(人)'},
    {'days':'7','title':'日增','number':'0','desc':'累计发布(次)'},
    {'days':'3','title':'日增','number':'0','desc':'累计绑定客户数(人)'},
  ];
  return NewGetCliteleState()
  ..navtitle = '获客中心'
  ..items=items
  ..navrightbtnname = 'images/nav_right_numbericon.webp'
  ..numberbg = 'images/number_bg.webp'
  ..numbericon = 'images/number_icon.webp'
  ..numbertext = '获客数据'
  ..numberslist = numberslist;
}
