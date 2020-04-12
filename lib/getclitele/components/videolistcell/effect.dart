import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<VideoListCellState> buildEffect() {
  return combineEffects(<Object, Effect<VideoListCellState>>{
    VideoListCellAction.action: _onAction,
  });
}

void _onAction(Action action, Context<VideoListCellState> ctx) {
  Navigator.pushNamed(ctx.context, 'videodetail',arguments: {'title':ctx.state.videotitle,'video':ctx.state.videoid});
}
