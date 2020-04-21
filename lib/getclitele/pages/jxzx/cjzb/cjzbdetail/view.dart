import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text(
        '财经早报详情'
      ),
    ),
    body: WebView(
      initialUrl: state.weburl,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller){
        state.controller = controller;
      },
      javascriptChannels: <JavascriptChannel>[
        _alertJavascriptChannel(viewService.context,state),
      ].toSet(),
    )
  );
}
//使用javascriptChannels发送消息 进行交互
//代码重点：JavascriptChannel中的name要与JS中的name.postMessage()相对应！！
JavascriptChannel _alertJavascriptChannel(BuildContext context,CjzbDetailState state) {
  return JavascriptChannel(
      name: 'showPaperShareFooterKey',
      onMessageReceived: (JavascriptMessage message) {
//        showToast(message.message);
          print(message.message);
//          state.controller.evaluateJavascript('');
      });
}