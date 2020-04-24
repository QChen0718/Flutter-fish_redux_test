//封装的统一加载刷新
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class BasePullRefresh extends StatefulWidget {
  /// 子组件
  final Widget child;
  final Future<void> Function() refresh;
  final Future<void> Function() load;
  /// 控制器
  final EasyRefreshController controller;

 const BasePullRefresh({Key key, this.controller, this.child, this.refresh, this.load}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BasePullRefreshState();
  }
}
class _BasePullRefreshState extends State<BasePullRefresh>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return EasyRefresh(
      controller: widget.controller,
      enableControlFinishRefresh: true,
      enableControlFinishLoad: true,
      header: ClassicalHeader(
          refreshingText: '正在刷新中',
          enableInfiniteRefresh: false
      ),
      footer: ClassicalFooter(
        noMoreText: '无更多数据'
      ),
      child: widget.child,
      onRefresh: widget.refresh,
      onLoad: widget.load,
    );
  }

}