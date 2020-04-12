class PosterListModel {
  int code;
  List<PosterListDataModel> data;
  int runSpanTime;
  int totalCount;
  bool isSuccess;

  PosterListModel(
      {this.code,
        this.data,
        this.runSpanTime,
        this.totalCount,
        this.isSuccess});

  PosterListModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = new List<PosterListDataModel>();
      json['data'].forEach((v) {
        data.add(new PosterListDataModel.fromJson(v));
      });
    }
    runSpanTime = json['runSpanTime'];
    totalCount = json['totalCount'];
    isSuccess = json['isSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['runSpanTime'] = this.runSpanTime;
    data['totalCount'] = this.totalCount;
    data['isSuccess'] = this.isSuccess;
    return data;
  }
}

class PosterListDataModel {
  String adResourceTypeName;
  int id;
  int mediaType;
  int adResourceTypeId;
  String name;
  String image;

  PosterListDataModel(
      {this.adResourceTypeName,
        this.id,
        this.mediaType,
        this.adResourceTypeId,
        this.name,
        this.image});

  PosterListDataModel.fromJson(Map<String, dynamic> json) {
    adResourceTypeName = json['adResourceTypeName'];
    id = json['id'];
    mediaType = json['mediaType'];
    adResourceTypeId = json['adResourceTypeId'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adResourceTypeName'] = this.adResourceTypeName;
    data['id'] = this.id;
    data['mediaType'] = this.mediaType;
    data['adResourceTypeId'] = this.adResourceTypeId;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}