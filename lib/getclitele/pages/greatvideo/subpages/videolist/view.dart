import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(VideoListState state, Dispatch dispatch, ViewService viewService) {
  return new MediaQuery.removePadding(
      removeTop: true,
      context: viewService.context,
      child: LoadStateLayout(
        controller: state.easyRefreshController,
        state: state.loadState,
        successWidget: new ListView.builder(
          itemBuilder: viewService.buildAdapter().itemBuilder,
          itemCount: viewService.buildAdapter().itemCount,
        ),
        refresh: () async{
          await dispatch(VideoListActionCreator.onRefresh());
        },
        load: () async{
          await dispatch(VideoListActionCreator.onLoad());
        },
      )
  );
}
