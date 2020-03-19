import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {

  Widget _buildCell(int index){
      return viewService.buildComponent('cell');
  }
  return Scaffold(
    body: new ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx,index){
          return _buildCell(index);
        }
    )
  );

}


