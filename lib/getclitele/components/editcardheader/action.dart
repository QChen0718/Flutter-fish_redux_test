import 'dart:io';

import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EditCardHeaderviewAction { action,selectPhoto, updatePhoto}

class EditCardHeaderviewActionCreator {
  static Action onAction() {
    return const Action(EditCardHeaderviewAction.action);
  }
  static Action onSelectPhoto() {
    return  Action(EditCardHeaderviewAction.selectPhoto);
  }
  static Action onUpdatePhoto(File imageurl) {
    return  Action(EditCardHeaderviewAction.updatePhoto,payload: imageurl);
  }
}

