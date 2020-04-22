import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/jsinteractionkey.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
        ),
        new Expanded(
            child: WebView(
              initialUrl: state.weburl,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller){
                state.controller = controller;
//                state.controller.complete(controller);
              },
              onPageFinished: (url){
//                获取网页 标题
                state.controller.evaluateJavascript("document.title").then((result){
//                  print(result);
                    dispatch(CjzbDetailActionCreator.onUpdateTitle(result));
                });
            },
              javascriptChannels: <JavascriptChannel>[
                _alertJavascriptChannel(viewService.context,state),
              ].toSet(),
            )
        )
      ],
    )
  );
}
//使用javascriptChannels发送消息 进行交互
//代码重点：JavascriptChannel中的name要与JS中的name.postMessage()相对应！！
JavascriptChannel _alertJavascriptChannel(BuildContext context,CjzbDetailState state) {
  return JavascriptChannel(
      name: 'showPaperShareFooterKey',
      onMessageReceived: (JavascriptMessage message) {
        print(message.toString());
//      返回数据给js
//          state.controller.evaluateJavascript('show');
      });
}