import 'package:fish_redux/fish_redux.dart';

class CustomerState implements Cloneable<CustomerState> {
  String textname;
  @override
  CustomerState clone() {
    return CustomerState()
    ..textname = textname;
  }
}

CustomerState initState(Map<String, dynamic> args) {
  return CustomerState()
  ..textname = '客户';
}
