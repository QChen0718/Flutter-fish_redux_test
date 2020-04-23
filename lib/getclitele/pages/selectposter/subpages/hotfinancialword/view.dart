import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/basepullrefresh.dart';
import 'package:flutter_fish_redux_router_qt/actions/nodata.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HotFinancialWordState state, Dispatch dispatch, ViewService viewService) {
  return BasePullRefresh(
    child: state.isnodata? LoadStateLayout(
      state: LoadState.State_Empty,
    ) : new GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//        横轴子元素数量
        crossAxisCount: 3,
//        主轴方向的间距
        mainAxisSpacing:Adapt.px(10),
//        横轴方向子元素的间距
        crossAxisSpacing:Adapt.px(28),
        childAspectRatio: 0.49,
      ),
      primary: false,
      padding:  EdgeInsets.only(left:Adapt.px(30),top: Adapt.px(25),right: Adapt.px(30),bottom: Adapt.px(49)),
      itemBuilder: viewService.buildAdapter().itemBuilder,
      itemCount: viewService.buildAdapter().itemCount,
    ),
    controller: state.controller,
    refresh: ()async{
      await dispatch(HotFinancialWordActionCreator.onRefresh());
    },
    load: () async{
      await dispatch(HotFinancialWordActionCreator.onLoad());
    },
  );
}
