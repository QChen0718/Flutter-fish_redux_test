import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/basepullrefresh.dart';

enum LoadState { State_Success, State_Error, State_Loading, State_Empty}
class LoadStateLayout extends StatefulWidget{
  final LoadState state;//页面状态
  final Widget successWidget; //成功视图
  final VoidCallback errorRetry; //错误事件处理
  final VoidCallback emptyRetry; //无数据点击刷新事件
  final Future<void> Function() refresh;
  final Future<void> Function() load;
  final EasyRefreshController controller;
  const LoadStateLayout({Key key,
    this.state = LoadState.State_Loading,
    this.successWidget,
    this.errorRetry,
    this.emptyRetry,
    this.refresh,
    this.load,
    this.controller,}) : super(key: key); //空数据事件处理
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoadStateLayoutState();
  }
}

class _LoadStateLayoutState extends State<LoadStateLayout>{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      宽高都充满屏幕剩余空间
      width: double.infinity,
      height: double.infinity,
      child: BasePullRefresh(
        child: _buildWidget,
        controller: widget.controller,
        refresh: widget.refresh,
        load: widget.load,
      )
    );
  }

  Widget get _buildWidget {
      switch (widget.state){
        case LoadState.State_Success:
          return widget.successWidget;
          break;
        case LoadState.State_Loading:
          return _loadingView;
          break;
        case LoadState.State_Error:
          return _errorView;
        case LoadState.State_Empty:
          return _nodataView;
        default:
          break;
      }
  }
//  加载视图
  Widget get _loadingView {
//      这块改成listview就不用设置大小了，他会在父布局中自动撑满剩下的布局
      return ListView(
         children: <Widget>[
           Container(
             alignment: Alignment.center,
             color: Colors.white,
             child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     new Text(
                         '拼命加载中...'
                     ),
                   ],
                 )

             ),
           )
         ],
      );

  }
  //错误视图
  Widget get _errorView{
      return ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: InkWell(
              onTap: widget.errorRetry,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      '加载失败，请轻触重试'
                  )
                ],
              ),
            ),
          )
        ],
      );
  }
  //无数据视图
  Widget get _nodataView{
    return ListView(
      children: <Widget>[
        new Center(
          child: Container(
            margin: EdgeInsets.only(top: Adapt.px(200)),
            child: InkWell(
              onTap: widget.errorRetry,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                      'images/NoData.webp'
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
