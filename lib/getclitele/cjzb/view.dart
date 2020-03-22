import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';

import '../../actions/adapt.dart';
import 'action.dart';
import 'state.dart';



Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {

  return Builder(
      builder: (context){
        Widget _buildPage(Widget page) {
          return KeepAliveWidget(page);
        }
        Widget _buildCell(int index){
          if(state.listcell != null && state.listcell.length>0){
            state.cjcellState = state.listcell[index];
            return _buildPage(viewService.buildComponent('cell'));
          }
        }
        return Scaffold(
            body: new ListView.builder(
                itemCount: state.count,
                itemBuilder: (ctx,index){
                  return _buildCell(index);
                }

            )
        );
      }
  );


}


