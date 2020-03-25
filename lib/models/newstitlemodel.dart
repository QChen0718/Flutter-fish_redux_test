class NewsTitleModel {
  List<NewsTitleData> data;
  bool isSuccess;
  int code;

  NewsTitleModel({this.data, this.isSuccess, this.code});

  NewsTitleModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<NewsTitleData>();
      json['data'].forEach((v) {
        data.add(new NewsTitleData.fromJson(v));
      });
    }
    isSuccess = json['isSuccess'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    return data;
  }
}

class NewsTitleData {
  int id;
  String name;
  int parentId;
  int attr;

  NewsTitleData({this.id, this.name, this.parentId, this.attr});

  NewsTitleData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parentId'];
    attr = json['attr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['parentId'] = this.parentId;
    data['attr'] = this.attr;
    return data;
  }
}