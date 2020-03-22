//这块遵循  AutomaticKeepAliveClientMixin 是为了解决在tabbar,bottombar等情况下切换页面的时候
//会重复处罚initstate方法

import 'package:flutter/material.dart';

class KeepAliveWidget extends StatefulWidget {
  final Widget child;

  const KeepAliveWidget(this.child);

  @override
  State<StatefulWidget> createState() => KeepAliveState();
}

class KeepAliveState extends State<KeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

Widget keepAliveWrapper(Widget child) {
  return KeepAliveWidget(child);
}