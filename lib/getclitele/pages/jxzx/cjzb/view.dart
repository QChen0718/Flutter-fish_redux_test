

import 'package:date_format/date_format.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/basepullrefresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {
  return new MediaQuery.removePadding(
      removeTop: true,
      context: viewService.context,
      child:
      BasePullRefresh(
        child: state.isnodata?
        LoadStateLayout(
          state: LoadState.State_Empty,
        ):
        new ListView.builder(
            itemCount: viewService.buildAdapter().itemCount,
            itemBuilder: viewService.buildAdapter().itemBuilder
        ),
        controller: state.controller,
        refresh: () async{
          await dispatch(CjzbActionCreator.onRefresh());
        },
        load: () async{
          await dispatch(CjzbActionCreator.onLoad());
        },
      )
      ///      第一种使用方式
  );
}
