// 列表布局的时候使用adapter

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/components/component.dart';
import 'package:flutter_fish_redux_router_qt/my/pages/userset/state.dart';

// ignore: deprecated_member_use
class UsersetAdapter extends SourceFlowAdapter<UsersetState> {
//  cell的类型
  static const settingType = 'setting';
  UsersetAdapter()
      : super(
          pool: <String, Component<Object>>{
            // 不一样数据类型，对应的 component 组件，type 和 state getItemType 方法对应
            // 容许多种 type
            settingType: ItemComponent()
          },
  );
}

