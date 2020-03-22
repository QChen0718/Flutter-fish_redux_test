import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {

  Widget _buildCell(int index){
    if(state.listcell != null && state.listcell.length>0){
      state.cjcellState = state.listcell[index];
      return viewService.buildComponent('cell');
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


