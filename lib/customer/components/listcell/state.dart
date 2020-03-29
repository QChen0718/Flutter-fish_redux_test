import 'package:fish_redux/fish_redux.dart';

class CustomerListcellState implements Cloneable<CustomerListcellState> {

  String cellheaderimagename;
  String username;
  String date;
  List<String> user_items;
  String numbers;
  String unit;
  String description;

  CustomerListcellState({this.cellheaderimagename, this.username, this.date,
    this.user_items, this.numbers, this.unit, this.description});

  @override
  CustomerListcellState clone() {
    return CustomerListcellState()
    ..cellheaderimagename = cellheaderimagename
    ..username = username
    ..date = date
    ..user_items = user_items
    ..numbers = numbers
    ..unit = unit
    ..description = description;
  }
}

CustomerListcellState initState(Map<String, dynamic> args) {
  return CustomerListcellState();
}
