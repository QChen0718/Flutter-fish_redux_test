import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjcellState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
      onTap: (){
//          跳转到详情
        dispatch(CjcellActionCreator.onJumpDetail());
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(Adapt.px(25)),
        child: new Row(
          children: <Widget>[
             new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(

                      child: Text(
                        state.celltitle,
                        style: new TextStyle(
                            color: Color(0xff333333),
                            fontSize: Adapt.px(32),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    new Container(
                      child: new Text(
                        state.cellcontent,
                        style: new TextStyle(
                            color: Color(0xff9B9B9B),
                            fontSize: Adapt.px(22)
                        ),
                      ),
                    )
                  ],
                ),
            ),
            new Container(
              margin: EdgeInsets.only(right: Adapt.px(25)),
              child: Image.network(
                state.cellcoverimagename,fit: BoxFit.fill,
                width: Adapt.px(160),
                height: Adapt.px(106),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Adapt.px(8)))
              ),
            )
          ],
        ),
      ),

  );
}
