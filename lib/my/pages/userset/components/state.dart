import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  String celltitle;
  String cell_arrow;
  bool celltype;
  ItemState({this.celltitle, this.cell_arrow, this.celltype});

  @override
  ItemState clone() {
    return ItemState()
    ..celltitle = celltitle
    ..cell_arrow = cell_arrow
    ..celltype = celltype;
  }
}

