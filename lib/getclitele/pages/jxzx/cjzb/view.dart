import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {
  return  new MediaQuery.removePadding(
          removeTop: true,
          context: viewService.context,
          child: new ListView.builder(
              itemCount: viewService.buildAdapter().itemCount,
              itemBuilder: viewService.buildAdapter().itemBuilder
          )
  );
}
