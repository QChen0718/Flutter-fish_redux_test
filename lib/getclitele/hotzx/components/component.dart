//统一管理（action，effect，reducer，state，view）

import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HeaderComponent extends Component<HeaderState> {
  HeaderComponent()
      : super(
//            shouldUpdate:(oldState,newState){
//              return oldState.showHeaderMovie != newState.showHeaderMovie;
//            },
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HeaderState>(
                adapter: null,
                slots: <String, Dependent<HeaderState>>{
                }),);

}
