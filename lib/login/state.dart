import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class LoginState implements Cloneable<LoginState> {
  String backimagename;
  String logoimagename;
  String login_input_bgimagename;
  String phone_icon;
  String password_icon;
  String phone_placehold;
  String password_placehold;
  TextEditingController textEditingController;
  @override
  LoginState clone() {
    return LoginState()
    ..backimagename = backimagename
    ..logoimagename = logoimagename
    ..login_input_bgimagename = login_input_bgimagename
    ..phone_icon = phone_icon
    ..password_icon = password_icon
    ..phone_placehold = phone_placehold
    ..password_placehold = password_placehold
    ..textEditingController = textEditingController;
  }
}

LoginState initState(Map<String, dynamic> args) {
  TextEditingController textEditingController = TextEditingController();
  return LoginState()
  ..backimagename = 'images/loginback.png'
  ..logoimagename = 'images/ycf_logo.webp'
  ..login_input_bgimagename = 'images/login_input_background.webp'
  ..phone_icon = 'images/login_phone_icon.webp'
  ..password_icon = 'images/password_icon.webp'
  ..phone_placehold = '请输入手机号'
  ..password_placehold = '请输入密码'
  ..textEditingController = textEditingController;
}
