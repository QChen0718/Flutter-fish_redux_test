import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../../../actions/adapt.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(CjzbState state, Dispatch dispatch, ViewService viewService) {

  return Scaffold(
      body: new ListView.builder(
          itemCount: viewService.buildAdapter().itemCount,
          itemBuilder: viewService.buildAdapter().itemBuilder
          )
  );
}
