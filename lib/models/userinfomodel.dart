class UserInfoModel {
  int id;
  String card;
  String photo;
  String realName;
  UserInfoModel(
      {
        this.id,
        this.card,
        this.photo,
        this.realName,
        });

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    card = json['card'];
    photo = json['photo'];
    realName = json['realName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['card'] = this.card;
    data['photo'] = this.photo;
    data['realName'] = this.realName;
    return data;
  }
}