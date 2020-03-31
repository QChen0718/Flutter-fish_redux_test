import 'package:date_format/date_format.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    FilterState state, Dispatch dispatch, ViewService viewService) {
  return Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: Adapt.px(30), right: Adapt.px(30)),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(state.titles.length, (index) {
            return _item(state.titles[index], index, dispatch, state);
          }),
        ),
      ),
      new Offstage(
        offstage: state.isshow,
        child: new Container(
          margin: EdgeInsets.only(left: Adapt.px(32)),
          width: Adapt.px(186),
          height: Adapt.px(214),
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new Container(
                height: Adapt.px(4),
                color: Color(0xffFF6633),
              ),
              new Container(
                  margin: EdgeInsets.only(top: Adapt.px(10)),
                  child: new Column(
                    children: List.generate(state.filteritems.length, (index) {
                      return _itemcell(state.filteritems[index], state, index,dispatch);
                    }),
                  )),
            ],
          ),
        ),
      )
    ],
  );
}

Widget _itemcell(String title, FilterState state, int index,Dispatch dispatch) {
  return GestureDetector(
    onTap: () {
      dispatch(FilterActionCreator.onShow(title));
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Offstage(
          offstage: title == state.selectitemtitle ? false : true,
          child: new Container(
            margin: EdgeInsets.only(left: Adapt.px(26)),
            child: Image.asset(
              state.filterselectname,
              width: Adapt.px(22),
              height: Adapt.px(16),
            ),
          ),
        ),
        new Container(
            margin: EdgeInsets.only(left: title == state.selectitemtitle ? Adapt.px(6) : Adapt.px(53) ),
            child: new Text(
          title,
          style:
              new TextStyle(color: Color(0xff666666), fontSize: Adapt.px(26)),
        )),
      ],
    ),
  );
}

_item(String title, int index, Dispatch dispatch, FilterState state) {
  return new GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            dispatch(FilterActionCreator.onShow(title));
            break;
          case 1:
//            dispatch(FilterActionCreator.onShow());
            break;
          case 2:
//            dispatch(FilterActionCreator.onShow());
            break;
          case 3:
            dispatch(FilterActionCreator.onOpenDrawer());
            break;
        }
        ;
      },
      child: index == 3
          ? new Container(
            child: new Row(
              children: <Widget>[
                new Container(
                  padding:
                  EdgeInsets.only(left: Adapt.px(10), right: Adapt.px(10)),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff333333), fontSize: Adapt.px(32)),
                  ),
                ),
                new Image.asset(
                  state.filtericonname,
                  width: Adapt.px(21),
                  height: Adapt.px(23),
                )
              ],
            ),
          )
          : index == 0 ? new Container(
            height: Adapt.px(48),
            child: new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(8)),
                  child: new Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff333333), fontSize: Adapt.px(32)),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: Adapt.px(6),right: Adapt.px(6)),
                  child: new Image.asset(
                    state.arrow_bottom,
                    width: Adapt.px(20),
                    height: Adapt.px(11),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffBDBDBD),
                width: Adapt.px(1)
              ),
              borderRadius: BorderRadius.circular(Adapt.px(3))
            ),
          ) : Text(
              title,
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: Adapt.px(32),
              ),
         ));
}
