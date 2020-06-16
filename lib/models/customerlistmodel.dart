import 'package:flutter_fish_redux_router_qt/models/basemodel.dart';

class CustomerListModel extends BaseModel{
  List<CustomerListDataModel> data;
  CustomerListModel({this.data});
  CustomerListModel.fromJson(Map<String, dynamic> json) {
    super.fromJson(json);
    if (json['data'] != null) {
      data = new List<CustomerListDataModel>();
      json['data'].forEach((v) {
        data.add(new CustomerListDataModel.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomerListDataModel {
  int id;
  int type;
  String photo;
  String name;
  String totalPrice;
  String lastLoginTime;
  List<String> tagList;
  int mapId;

  CustomerListDataModel(
      {this.id = 0,
        this.type = 0,
        this.photo = "",
        this.name = "",
        this.totalPrice = "",
        this.lastLoginTime = "",
        this.tagList,
        this.mapId = 0});

  CustomerListDataModel.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    type = json['type'];
    photo = json['photo'];
    name = json['name'];
    totalPrice = json['totalPrice'];
    lastLoginTime = json['lastLoginTime'];
    tagList = json['tagList'].cast<String>();
    mapId = json['mapId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['photo'] = this.photo;
    data['name'] = this.name;
    data['totalPrice'] = this.totalPrice;
    data['lastLoginTime'] = this.lastLoginTime;
    data['tagList'] = this.tagList;
    data['mapId'] = this.mapId;
    return data;
  }
}