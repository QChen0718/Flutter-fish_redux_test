

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {
  return new MediaQuery.removePadding(
      removeTop: true,
      context: viewService.context,
      child:
      ///      第一种使用方式
//      EasyRefresh(
//        controller: state.controller,
//        child: new ListView.builder(
//            itemCount: viewService.buildAdapter().itemCount,
//            itemBuilder: viewService.buildAdapter().itemBuilder
//        ),
//        onRefresh: (){
//          dispatch(CjzbActionCreator.onRefresh());
//        },
//        onLoad: (){
//
//        },
//      )
//       第二种使用方式
        EasyRefresh.custom(
            enableControlFinishRefresh: true,  //是否开启控制结束刷新
            enableControlFinishLoad: true, // 是否开启控制结束加载
            taskIndependence: true, //任务独立(刷新和加载状态独立)
            controller: state.controller,
            scrollController: state.scrollController,
            reverse: false,  // 反向
            scrollDirection: Axis.vertical, //方向
            topBouncing: true, // 顶部回弹
            bottomBouncing: true, //  底部回弹
            header: ClassicalHeader(
              enableInfiniteRefresh: false, //是否开启无限刷新
//                Theme.of(viewService.context).primaryColor  获取主题色
              bgColor: state.headerFloat ? Theme.of(viewService.context).primaryColor : null,
              infoColor: state.headerFloat ? Colors.black87 : Colors.teal,
              float: state.headerFloat,
              enableHapticFeedback: true //是否开启震动
            ),
            footer: ClassicalFooter(
              enableInfiniteLoad: true, // 是否无限加载
              enableHapticFeedback: true //是否开启震动
            ),
            onRefresh: (){

            },
            onLoad: (){

            },
            slivers: [
//                new SliverList(
//                    delegate: SliverChildBuilderDelegate((context, index) {
//                      return new ListView.builder(
//                          itemCount: viewService.buildAdapter().itemCount,
//                          itemBuilder: viewService.buildAdapter().itemBuilder
//                      );
//                    },
//                      childCount: viewService.buildAdapter().itemCount
//                    ),
//
//                )
//                  new Container()
                Expanded(
                  child: new ListView.builder(
                      itemCount: viewService.buildAdapter().itemCount,
                      itemBuilder: viewService.buildAdapter().itemBuilder
                  ),
                )
            ]
        )
//      new RefreshIndicator(
//          child: new ListView.builder(
//              itemCount: viewService.buildAdapter().itemCount,
//              itemBuilder: viewService.buildAdapter().itemBuilder
//          ),
//          onRefresh: (){
//
//          }
//      )
  );
}
