import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ScreeningState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: Colors.white,
    child: new Column(
      children: <Widget>[
        Expanded(
            child: new MediaQuery.removePadding(
                removeTop: true,
                context: viewService.context,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: Adapt.padTopH()+Adapt.px(30),left: Adapt.px(44)),
                  itemCount: state.screeningitems.length,
                  itemBuilder: (context,index){
                    return buildItem(index,state,dispatch);
                  },
                )
            )
        ),
        new Container(
          margin: EdgeInsets.only(bottom: Adapt.padBotH()+Adapt.px(40)),
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
      if(index == 0){
        dispatch(ScreeningActionCreator.onReset());
      }else{
        dispatch(ScreeningActionCreator.onAction(index));
      }
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
buildItem(int index,ScreeningState state,Dispatch dispatch){
//  List subitems = state.items[index];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      new Container(
        margin: EdgeInsets.only(bottom: Adapt.px(15)),
        child: new Text(
          state.screeningitems[index]['title'],
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
          children: List.generate(state.screeningitems[index]['items'].length, (subindex){
            return _subitem(state.screeningitems[index]['items'][subindex]['subtitle'],subindex,index,state,dispatch);
          })
        ),
      )

    ],
  );
}

//每一个item选项
_subitem(String currenttitle,int index,int section,ScreeningState state,Dispatch dispatch){
  return new GestureDetector(
    onTap: (){
      dispatch(ScreeningActionCreator.onSelectItems({
        'row':index,
        'section':section,
        'bgcolor':state.screeningitems[section]['items'][index]['isselect'] ?
            Color(0xffFFECE6)
            :Color(0xffF5F5F5),
      }));
    },
    child: new Container(
      padding: (section == 4 || section == 6)?
      EdgeInsets.only(left: Adapt.px(20),right: Adapt.px(20))
          :EdgeInsets.only(left: Adapt.px(50),right: Adapt.px(50)),
      child: new Text(
        currenttitle,
        style: TextStyle(
            color:state.screeningitems[section]['items'][index]['isselect'] ?
            Color(0xffFF6633)
            :Color(0xff4A4A4A),
            fontSize: Adapt.px(28)
        ),
      ),
      decoration: BoxDecoration(
          color: state.screeningitems[section]['items'][index]['isselect'] ?
          Color(0xffFFECE6)
          :Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(Adapt.px(4))
      ),
    ),
  );
}
