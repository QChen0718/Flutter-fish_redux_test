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
    )
  );
}
