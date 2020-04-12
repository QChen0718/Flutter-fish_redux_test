import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class VideoListCellComponent extends Component<VideoListCellState> {
  VideoListCellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<VideoListCellState>(
                adapter: null,
                slots: <String, Dependent<VideoListCellState>>{
                }),);

}
