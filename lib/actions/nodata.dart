import 'package:flutter/material.dart';

enum LoadState { State_Success, State_Error, State_Loading, State_Empty}
class LoadStateLayout extends StatefulWidget{
  final LoadState state;//页面状态
  final Widget successWidget; //成功视图
  final VoidCallback errorRetry; //错误事件处理
  final VoidCallback emptyRetry;

  const LoadStateLayout({Key key, this.state = LoadState.State_Loading, this.successWidget, this.errorRetry, this.emptyRetry}) : super(key: key); //空数据事件处理
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
      child: _buildWidget,
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
      return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        color: Colors.white,
        child: Container(
          child: Text(
            '拼命加载中...'
          ),
        ),
      );
  }
  //错误视图
  Widget get _errorView{
      return Container(
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
      );
  }
  //无数据视图
  //错误视图
  Widget get _nodataView{
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: InkWell(
        onTap: widget.errorRetry,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                '暂无相关数据，轻触重试~'
            )
          ],
        ),
      ),
    );
  }
}
