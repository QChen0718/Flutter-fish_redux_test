
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fish_redux_router_qt/actions/sputil.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/addcustomer/page.dart';
import 'package:flutter_fish_redux_router_qt/customer/pages/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/forwardingzs/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videodetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/greatvideo/subpages/videolist/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/cjzb/cjzbdetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/cjzb/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/getclitele_detail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/jxzx/hotzx/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/marketingclues/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/sharejl/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/marketingzs/subpages/statistics/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/mycard/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/mycard/subpages/editcard/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/numberstatistics/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/productrecommend/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/hotfinancialword/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/selectposterdetail/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/topshare/page.dart';
import 'package:flutter_fish_redux_router_qt/getclitele/pages/selectposter/subpages/ycfclimate/page.dart';
import 'package:flutter_fish_redux_router_qt/login/page.dart';
import 'package:flutter_fish_redux_router_qt/main/page.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/page.dart';
import 'package:flutter_fish_redux_router_qt/start/page.dart';
import 'package:flutter_fish_redux_router_qt/testmixin.dart';
import 'actions/loadingview.dart';
import 'actions/notificationcenter.dart';
import 'customer/page.dart';
import 'getclitele/pages/jxzx/page.dart';
import 'getclitele/pages/notespost/page.dart';
import 'my/page.dart';
import 'package:flutter_plugin_two/flutter_plugin_two.dart';

class YicaifuApp extends StatefulWidget{
  //  初始化路由表，管理所有页面的路由
  static AbstractRoutes routes = PageRoutes(
      pages:  {
        'statr':StartPage(),
        'login':LoginPage(),
        'main':MainPage(),
        'getclitele':GetClitelePage(),
        'newgetclitele':NewGetClitelePage(),
        'customer':CustomerPage(),
        'customerdetail':CustomerDetailPage(),
        'my':MyPage(),
        'getcliteledetail':GetCliteleDetailPage(),
        'cjzb':CjzbPage(),
        'hotzx':HotzxPage(),
        'cjzbdetail':CjzbDetailPage(),
        'userset':UsersetPage(),
        'numberstatistics':NumberStatisticsPage(),
        'marketingzs':MarketingZSPage(),
        'marketingclues':MarketingCluesPage(),
        'sharejl':SharejlPage(),
        'statistics':StatisticsPage(),
        'selectposter':SelectPosterPage(),
        'hotfinancialword':HotFinancialWordPage(),
        'topshare':TopSharePage(),
        'ycfclimate':YCFClimatePage(),
        'selectposterdetail':PosterDetailPage(),
        'mycard':MyCardPage(),
        'editcard':EditCardPage(),
        'producttj':ProductRecommendPage(),
        'greatvideo':GreatVideoPage(),
        'videolist':VideoListPage(),
        'videodetail':VideoDetailPage(),
        'forwardingzs':ForwardingZSPage(),
        'notespost':NotePostPage(),
        'addcustomer':addcustomerPage()
      }
  );
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _YicaifuAppState();
  }

}
class _YicaifuAppState extends State<YicaifuApp> with WidgetsBindingObserver{

  static BuildContext appContext;

//这块检查是显示登录页面还是直接显示首页
 Widget _checkshowpage(){
   String userid = SpUtil.preferences.getString('id');
   if(userid != null){
//     主页面
     return YicaifuApp.routes.buildPage('main', {
       'pages':List<Widget>.unmodifiable([
//          子路由的设置
         YicaifuApp.routes.buildPage('newgetclitele', null),
         YicaifuApp.routes.buildPage('customer', null),
         YicaifuApp.routes.buildPage('my', null)
       ])
     });
   }else{
//     登录页面
     return YicaifuApp.routes.buildPage('login', null);
   }
  }
// 定义NavigatorState的GlobalKey
  static GlobalKey<NavigatorState> navigatorState = new GlobalKey();
//  3、在需要跳转的地方调用navigatorState.currentState获取到NavigatorState进行界面跳转即可。
//  前后台监听方法
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    var suspending;
    switch (state) {
      case AppLifecycleState.inactive: // 处于这种状态的应用程序应该假设它们可能在任何时候暂停。
        break;
      case AppLifecycleState.resumed:// 应用程序可见，前台
//        判断是否是复制了微信链接
          getClipboardContents();
        break;
      case AppLifecycleState.paused: // 应用程序不可见，后台
      //发送通知隐藏弹窗

        break;
      default:
        break;
    }
  }
  /// 使用异步调用获取系统剪贴板的返回值
  getClipboardContents() {
//    访问剪贴板的内容
    if(SpUtil.clipboardData != null && SpUtil.clipboardData.text.trim() != ''){
      print(SpUtil.clipboardData.text);
      //发送通知显示弹窗
      NotificationCenter.instance.postNotification('showpopview',null);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  @override
  Widget build(BuildContext context) {
    appContext = context;
    // TODO: implement build
    return MaterialApp(
      navigatorKey: navigatorState,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        设置统一风格
        primarySwatch: Colors.red,
//        primaryColor: Colors.yellow
      ),
      home: _checkshowpage(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute<Object>(
            builder: (BuildContext context){
              return YicaifuApp.routes.buildPage(settings.name, settings.arguments);
            });
      },
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}