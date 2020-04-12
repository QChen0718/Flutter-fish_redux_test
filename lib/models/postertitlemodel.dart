class PostertitleModel {
  List<PostertitleDataModel> data;
  bool isSuccess;
  int code;
  int runSpanTime;

  PostertitleModel({this.data, this.isSuccess, this.code, this.runSpanTime});

  PostertitleModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<PostertitleDataModel>();
      json['data'].forEach((v) {
        data.add(new PostertitleDataModel.fromJson(v));
      });
    }
    isSuccess = json['isSuccess'];
    code = json['code'];
    runSpanTime = json['runSpanTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    data['runSpanTime'] = this.runSpanTime;
    return data;
  }
}

class PostertitleDataModel {
  int id;
  String name;
  int parentId;
  String type;

  PostertitleDataModel({this.id, this.name, this.parentId, this.type});

  PostertitleDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    parentId = json['parentId'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['parentId'] = this.parentId;
    data['type'] = this.type;
    return data;
  }
}