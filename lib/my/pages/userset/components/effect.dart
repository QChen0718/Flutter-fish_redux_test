import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Effect<ItemState> buildEffect() {
  return combineEffects(<Object, Effect<ItemState>>{
    ItemAction.action: _onAction,
    ItemAction.cellClick: _onCellClick
  });
}

void _onAction(Action action, Context<ItemState> ctx) {
}
void _onCellClick(Action action, Context<ItemState> ctx){
  if(!ctx.state.celltype) {
    _loginout(ctx);
  }
}

_loginout(Context<ItemState> ctx){
  showDialog<Null>(
      context: ctx.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Center(
            child:Text('标题') ,
          ) ,
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Center(
                  child: Text('是否退出'),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: new Text('取消')
            ),
            new Container(
              margin: EdgeInsets.only(left: Adapt.px(200)),
            ),

            new FlatButton(
              child: new Text('确定'),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(ctx.context, 'login', ModalRoute.withName('main'));
              },
            ),
          ],
        );
      }
  );
}