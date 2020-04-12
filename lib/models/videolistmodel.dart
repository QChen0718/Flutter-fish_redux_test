class VideoListModel {
  VideoListDataModel data;
  int totalCount;
  bool isSuccess;
  int code;
  int runSpanTime;

  VideoListModel(
      {this.data,
        this.totalCount,
        this.isSuccess,
        this.code,
        this.runSpanTime});

  VideoListModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new VideoListDataModel.fromJson(json['data']) : null;
    totalCount = json['totalCount'];
    isSuccess = json['isSuccess'];
    code = json['code'];
    runSpanTime = json['runSpanTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['totalCount'] = this.totalCount;
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    data['runSpanTime'] = this.runSpanTime;
    return data;
  }
}

class VideoListDataModel {
  int totalCount;
  List<VideoListSubDataModel> data;

  VideoListDataModel({this.totalCount, this.data});

  VideoListDataModel.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['data'] != null) {
      data = new List<VideoListSubDataModel>();
      json['data'].forEach((v) {
        data.add(new VideoListSubDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VideoListSubDataModel {
  int id;
  String title;
  int type;
  int productId;
  String image;
  String pcimage;
  String files;
  String guest;
  String content;
  String startTime;
  int attr;
  int count;
  int status;
  String row;

  VideoListSubDataModel(
      {this.id,
        this.title,
        this.type,
        this.productId,
        this.image,
        this.pcimage,
        this.files,
        this.guest,
        this.content,
        this.startTime,
        this.attr,
        this.count,
        this.status,
        this.row});

  VideoListSubDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    productId = json['productId'];
    image = json['image'];
    pcimage = json['pcimage'];
    files = json['files'];
    guest = json['guest'];
    content = json['content'];
    startTime = json['startTime'];
    attr = json['attr'];
    count = json['count'];
    status = json['status'];
    row = json['row'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['productId'] = this.productId;
    data['image'] = this.image;
    data['pcimage'] = this.pcimage;
    data['files'] = this.files;
    data['guest'] = this.guest;
    data['content'] = this.content;
    data['startTime'] = this.startTime;
    data['attr'] = this.attr;
    data['count'] = this.count;
    data['status'] = this.status;
    data['row'] = this.row;
    return data;
  }
}