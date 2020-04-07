import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ScreeningState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.only(top: Adapt.padTopH()+Adapt.px(30),left: Adapt.px(44)),
    child: new Column(
      children: <Widget>[
        Expanded(
            child: new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: ListView.builder(
                  itemCount: state.titles.length,
                  itemBuilder: (context,index){
                    return buildItem(index,state);
                  },
                )
            )
        ),
        new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(state.btnstyle.length, (index){
             return _getbutton(state.btnstyle[index], index,dispatch);
            }),
          ),
        )
      ],
    ),
  );
}
Widget _getbutton(Map<String,dynamic> data,int index,Dispatch dispatch){
  return MaterialButton(
    onPressed: (){
      dispatch(ScreeningActionCreator.onAction(index));
    },
    child: new Container(
      width: Adapt.px(180),
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Adapt.px(47)),
        color: data['bgcolor'],
      ),
      child: new Text(
        data['title'],
        style:  TextStyle(
            color: data['textcolor'],
            fontSize: Adapt.px(32)
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
buildItem(int index,ScreeningState state){
  List subitems = state.items[index];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(15)),
        child: new Text(
          state.titles[index],
          style: TextStyle(
              color: Color(0xff4A4A4A),
              fontSize: Adapt.px(32)
          ),
        ),
      ),
      new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(60)),
        width: Adapt.px(455),
        child: Wrap(
          spacing: Adapt.px(35),
          runSpacing: Adapt.px(20),
          children: _subitems(subitems),
        ),
      )

    ],
  );
}
//
_subitems(List currentitems){
  List<Widget> subitems = [];
  currentitems.forEach((str){
    subitems.add(_subitem(str));
  });
  return subitems;
}
//每一个item选项
_subitem(String currenttitle){
  return new Container(
    padding: EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20)),
    child: new Text(
      currenttitle,
      style: TextStyle(
          color: Color(0xff4A4A4A),
          fontSize: Adapt.px(28)
      ),
    ),
    decoration: BoxDecoration(
        color: Color(0xffFFECE6),
        borderRadius: BorderRadius.circular(Adapt.px(4))
    ),
  );
}
