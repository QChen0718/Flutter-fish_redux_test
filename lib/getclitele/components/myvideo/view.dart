import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(MyVideoState state, Dispatch dispatch, ViewService viewService) {
  // 控件ui下半部
  Widget _bottomControl() {
    return Positioned( // 需要定位
      left: 0,
      bottom: state.isFullScreen?Adapt.padBotH():0,
      child: Offstage( // 控制是否隐藏
        offstage: state.hidePlayControl,
        child: AnimatedOpacity( // 加入透明度动画
          opacity: 1.0,
          duration: Duration(milliseconds: 300),
          child: Container(// 底部控件的容器
            margin: EdgeInsets.only(left: Adapt.px(7),right: Adapt.px(7),bottom: Adapt.px(7)),
            width: state.width-Adapt.px(14),
            height: Adapt.px(67),
            decoration: BoxDecoration(
              color: Color.fromRGBO(102, 102 , 102, .93),
//              color: Colors.red,
              borderRadius:BorderRadius.circular(Adapt.px(15))
            ),
            child: state.videoInit ? Row( // 加载完成时才渲染,flex布局
              children: <Widget>[
                new GestureDetector(
                  onTap: (){
                    dispatch(MyVideoActionCreator.onSpeedandreverse(200));
                  },
                  child: new Container(
                    margin: EdgeInsets.only(left: Adapt.px(36)),
                    child: new Image.asset(
                      state.quicklyname,
                      width: Adapt.px(26),
                      height: Adapt.px(29),
                    ),
                  ),
                ),
                new Container(
                 child: IconButton( // 播放按钮
                      padding: EdgeInsets.zero,
                      iconSize: 26,
                      icon: Icon( // 根据控制器动态变化播放图标还是暂停
                        state.controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        dispatch(MyVideoActionCreator.onPlay());
                      },
                  )
                ),
                new GestureDetector(
                  onTap: (){
                    dispatch(MyVideoActionCreator.onSpeedandreverse(100));
                  },
                  child: new Container(
                    margin: EdgeInsets.only(right: Adapt.px(36)),
                    child: new Image.asset(
                      state.forwardname,
                      width: Adapt.px(26),
                      height: Adapt.px(29),
                    ),

                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(15)),
                  child: new Text(
                    APPInfo.durationToTime(state.controller.value.position.inMilliseconds),
                    style: new TextStyle(
                      color: Color(0xffffffff),
                      fontSize: Adapt.px(24)
                    ),
                  ),
                ),
                Flexible( // 相当于前端的flex: 1
                  child: VideoProgressIndicator( // 嘻嘻，这是video_player编写好的进度条，直接用就是了~~
                    state.controller,
                    allowScrubbing: true, // 允许手势操作进度条
                    padding: EdgeInsets.all(0),
                    colors: VideoProgressColors( // 配置进度条颜色，也是video_player现成的，直接用
                      playedColor: Theme
                          .of(viewService.context)
                          .primaryColor,
                      // 已播放的颜色
                      bufferedColor: Color.fromRGBO(255, 255, 255, .5),
                      // 缓存中的颜色
                      backgroundColor: Color.fromRGBO(
                          255, 255, 255, .2), // 为缓存的颜色
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(15)),
                  child: new Text(
                    APPInfo.durationToTime(state.controller.value.duration.inMilliseconds),
                    style: new TextStyle(
                      color: Color(0xffCECECE),
                      fontSize: Adapt.px(24)
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(right: Adapt.px(36),left: Adapt.px(36)),
                  child: new Image.asset(
                      state.screenname,
                      width: Adapt.px(33),
                      height: Adapt.px(26),
                    ),
                ),
              ],
            ) : Container(),
          ),
        ),
      ),
    );
  }
  // 控件ui上半部
  Widget _topControl(){
    return Positioned(
        left: 0,
        top: state.isFullScreen?Adapt.padTopH():0,
        child: new Offstage(
          offstage: state.hidePlayControl,
          child: new Container(
            height: Adapt.px(60),
            width: state.width,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap:(){
                    dispatch(MyVideoActionCreator.onRotating());
                  },
                  child: new Container(
                    margin: EdgeInsets.only(left: Adapt.px(7),top: Adapt.px(10)),
                    child: new Image.asset(
                      state.fullscreen,
                      width: Adapt.px(93),
                      height: Adapt.px(60),
                    ),
                  ),

                ),
                new GestureDetector(
                  onTap:(){
//                  是否静音
                    dispatch(MyVideoActionCreator.onAction(100));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: Adapt.px(7),top: Adapt.px(10)),
                    child: new Image.asset(
                      state.volumename,
                      width: Adapt.px(110),
                      height: Adapt.px(60),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

  return Container(
    width:  state.width,
    height: state.height,
    color: Colors.black,
    child: state.url!=null?Stack(
      children: <Widget>[
        GestureDetector(
          onTap: (){
//          单击隐藏功能操作UI
            dispatch(MyVideoActionCreator.onHidenui());
          },
            onDoubleTap: (){
//            双击播放
              dispatch(MyVideoActionCreator.onPlay());
            },
          child: FutureBuilder(
              future: state.initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done){
//                  加载完成
                  dispatch(MyVideoActionCreator.onUpdate());
                  return AspectRatio(
                    aspectRatio: state.controller.value.aspectRatio,
                    child: VideoPlayer(state.controller),
                  );
                }else {
                  return Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }
          )
        ),
        _topControl(),
        _bottomControl()

      ],
    ):new Container(),
  );

}
