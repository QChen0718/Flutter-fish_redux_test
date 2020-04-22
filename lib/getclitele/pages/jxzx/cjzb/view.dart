

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/basepullrefresh.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {
  return new MediaQuery.removePadding(
      removeTop: true,
      context: viewService.context,
      child: BasePullRefresh.refresh(
          new ListView.builder(
            itemCount: viewService.buildAdapter().itemCount,
            itemBuilder: viewService.buildAdapter().itemBuilder
          ),
          (controller){
            state.controller = controller;
            return dispatch(CjzbActionCreator.onRefresh());
          },
          (controller){
            state.controller = controller;
            return dispatch(CjzbActionCreator.onLoad());
          }
      )
      ///      第一种使用方式
//      EasyRefresh(
//        controller: state.controller,
//        enableControlFinishRefresh: true,
//        enableControlFinishLoad: true,
//        header: ClassicalHeader(
//          refreshingText: '正在刷新中',
//          enableInfiniteRefresh: false
//        ),
//        child: new ListView.builder(
//            itemCount: viewService.buildAdapter().itemCount,
//            itemBuilder: viewService.buildAdapter().itemBuilder
//        ),
//        onRefresh: () async{
//          await dispatch(CjzbActionCreator.onRefresh());
//        },
//        onLoad: () async{
//          await dispatch(CjzbActionCreator.onLoad());
//        },
//      )
  );
}
