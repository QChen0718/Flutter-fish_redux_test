import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HotzxState state, Dispatch dispatch, ViewService viewService) {
  Widget _buildCell(int index){
    return viewService.buildComponent('cells');
  }
  return Scaffold(
    body:ListView.builder(
          itemCount: 10,
          itemBuilder: (ctx,index){
            return _buildCell(index);
          }
      ),
  );
}
