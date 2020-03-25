
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/keepalive_widget.dart';

import 'action.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CustomerState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        Widget _buildPage(Widget page){
          return KeepAliveWidget(page);
        }
        return Scaffold(
          appBar: new AppBar(
            title: new Text(
                '客户'
            ),
            centerTitle: true,
          ),
          body: _buildPage(
              new Column(
                 children: <Widget>[
                   new Text(
                       state.textname
                   ),
                   new RaisedButton(
                       onPressed: (){
                         dispatch(CustomerActionCreator.onUpdateData());
                       },
                     child: new Text(
                       '修改文案'
                     ),
                   )
                 ],
          )) ,
        );
      }
  );
}
