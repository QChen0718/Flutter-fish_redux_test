import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CustomerListcellComponent extends Component<CustomerListcellState> {
  CustomerListcellComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CustomerListcellState>(
                adapter: null,
                slots: <String, Dependent<CustomerListcellState>>{
                }),);

}
