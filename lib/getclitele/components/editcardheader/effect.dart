
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_fish_redux_router_qt/actions/selectphotoview.dart';
import 'action.dart';
import 'state.dart';

Effect<EditCardHeaderviewState> buildEffect() {
  return combineEffects(<Object, Effect<EditCardHeaderviewState>>{
    EditCardHeaderviewAction.action: _onAction,
    EditCardHeaderviewAction.selectPhoto: _onSelectPhoto
  });
}

void _onAction(Action action, Context<EditCardHeaderviewState> ctx) {
}

void _onSelectPhoto(Action action, Context<EditCardHeaderviewState> ctx) {
    showModalBottomSheet(
        context: ctx.context,
        builder: (context){
            return SelectPhotoView(selectImageCoreBack:(image){
              ctx.dispatch(EditCardHeaderviewActionCreator.onUpdatePhoto(image));
            });
        }
    );
}