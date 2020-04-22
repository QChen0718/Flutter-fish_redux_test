//封装的统一加载刷新
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class BasePullRefresh {
  static Widget refresh(Widget child, Future<void> Function() refresh(EasyRefreshController controller),Future<void> Function() load(EasyRefreshController controller)){
    EasyRefreshController controller = EasyRefreshController();
    return EasyRefresh(
        controller: controller,
        enableControlFinishRefresh: true,
        enableControlFinishLoad: true,
        header: ClassicalHeader(
          refreshingText: '正在刷新中',
          enableInfiniteRefresh: false
        ),
        child: child,
        onRefresh: refresh(controller),
        onLoad: load(controller),
    );
  }
}