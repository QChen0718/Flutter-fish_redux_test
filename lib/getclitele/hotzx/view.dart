import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HotzxState state, Dispatch dispatch, ViewService viewService) {

  return Builder(
      builder: (context){

        Widget _buildPage(Widget page) {
          return KeepAliveWidget(page);
        }
        return Scaffold(
          body:ListView.builder(
              itemCount: 10,
              itemBuilder: (ctx,index){

                return _buildPage(viewService.buildComponent('cells')) ;
              }
          ),
        );
      }
  );
}
