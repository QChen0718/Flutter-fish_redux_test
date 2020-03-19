import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjzbDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: new AppBar(
      title: new Text(
        '财经早报详情'
      ),
    ),
    body: new Center(
      child: new RaisedButton(
          onPressed: (){
            dispatch(CjzbDetailActionCreator.onBack());
          },
        child: new Text(
          '返回'
        ),
      ),
    ),
  );
}
