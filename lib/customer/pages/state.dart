import 'package:fish_redux/fish_redux.dart';

class CustomerDetailState implements Cloneable<CustomerDetailState> {

  @override
  CustomerDetailState clone() {
    return CustomerDetailState();
  }
}

CustomerDetailState initState(Map<String, dynamic> args) {
  return CustomerDetailState();
}
