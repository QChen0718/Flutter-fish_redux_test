import 'package:fish_redux/fish_redux.dart';

class CustomerState implements Cloneable<CustomerState> {

  @override
  CustomerState clone() {
    return CustomerState();
  }
}

CustomerState initState(Map<String, dynamic> args) {
  return CustomerState();
}
