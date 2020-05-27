import 'package:flutter_fish_redux_router_qt/models/basemodel.dart';
class CardModel extends BaseModel {
  CardDataModel dataModel;

  CardModel(this.dataModel);

  CardModel.fromJson(Map<String, dynamic> json){
    super.fromJson(json);
    dataModel =
    json['data'] != null ? new CardDataModel.fromJson(json['data']) : null;
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
class CardDataModel {
  int id;
  String realName;
  String mobile;
  String email;
  String photo;
  String weChat;
  int customerCount;
  int manageCapital;
  String company;
  String companyAddress;
  String position;
  int viewCount;

  CardDataModel(
      {this.id,
        this.realName,
        this.mobile,
        this.email,
        this.photo,
        this.weChat,
        this.customerCount,
        this.manageCapital,
        this.company,
        this.companyAddress,
        this.position,
        this.viewCount});

  CardDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    realName = json['realName'];
    mobile = json['mobile'];
    email = json['email'];
    photo = json['photo'];
    weChat = json['weChat'];
    customerCount = json['customerCount'];
    manageCapital = json['manageCapital'];
    company = json['company'];
    companyAddress = json['companyAddress'];
    position = json['position'];
    viewCount = json['viewCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['realName'] = this.realName;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['photo'] = this.photo;
    data['weChat'] = this.weChat;
    data['customerCount'] = this.customerCount;
    data['manageCapital'] = this.manageCapital;
    data['company'] = this.company;
    data['companyAddress'] = this.companyAddress;
    data['position'] = this.position;
    data['viewCount'] = this.viewCount;
    return data;
  }
}