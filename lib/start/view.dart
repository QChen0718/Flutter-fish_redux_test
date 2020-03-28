
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(StartState state, Dispatch dispatch, ViewService viewService) {
  return Builder(
      builder: (context){
        return Container(
          child: Image.asset(
            state.splash,
            fit: BoxFit.fill,
          ),
        );
      }
  );
}
