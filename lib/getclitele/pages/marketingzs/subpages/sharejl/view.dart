import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SharejlState state, Dispatch dispatch, ViewService viewService) {
  return new ListView.builder(
      itemCount: viewService.buildAdapter().itemCount,
      itemBuilder: viewService.buildAdapter().itemBuilder
  );
}
