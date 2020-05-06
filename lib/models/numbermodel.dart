import 'package:flutter_fish_redux_router_qt/models/basemodel.dart';
class NumberModel extends BaseModel{
  NumberDataModel dataModel;

  NumberModel(this.dataModel);
  NumberModel.fromJson(Map<String,dynamic> json){
    super.fromJson(json);
    dataModel = json['data'] != null ? new NumberDataModel.fromJson(json['data']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data.addAll(super.toJson());
    if (this.dataModel != null) {
      data['data'] = this.dataModel.toJson();
    }
    return data;
  }
}
class NumberDataModel{
  int userCount;
  int userCountToday;
  int userCountWeek;
  int orderAddWeek;
  int visitCount;
  int visitCountToday;
  int publishCount;
  int publishCountToday;
  int customerCount;
  int customerCountToday;

  NumberDataModel(
      {this.userCount,
        this.userCountToday,
        this.userCountWeek,
        this.orderAddWeek,
        this.visitCount,
        this.visitCountToday,
        this.publishCount,
        this.publishCountToday,
        this.customerCount,
        this.customerCountToday});

  NumberDataModel.fromJson(Map<String, dynamic> json) {
    userCount = json['userCount'];
    userCountToday = json['userCountToday'];
    userCountWeek = json['userCountWeek'];
    orderAddWeek = json['orderAddWeek'];
    visitCount = json['visitCount'];
    visitCountToday = json['visitCountToday'];
    publishCount = json['publishCount'];
    publishCountToday = json['publishCountToday'];
    customerCount = json['customerCount'];
    customerCountToday = json['customerCountToday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userCount'] = this.userCount;
    data['userCountToday'] = this.userCountToday;
    data['userCountWeek'] = this.userCountWeek;
    data['orderAddWeek'] = this.orderAddWeek;
    data['visitCount'] = this.visitCount;
    data['visitCountToday'] = this.visitCountToday;
    data['publishCount'] = this.publishCount;
    data['publishCountToday'] = this.publishCountToday;
    data['customerCount'] = this.customerCount;
    data['customerCountToday'] = this.customerCountToday;
    return data;
  }
}