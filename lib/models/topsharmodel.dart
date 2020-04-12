class TopShareModel {
  List<TopShareDataModel> data;
  int pageIndex;
  int totalCount;
  String shareImg;
  bool isSuccess;
  int code;
  int runSpanTime;

  TopShareModel(
      {this.data,
        this.pageIndex,
        this.totalCount,
        this.shareImg,
        this.isSuccess,
        this.code,
        this.runSpanTime});

  TopShareModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<TopShareDataModel>();
      json['data'].forEach((v) {
        data.add(new TopShareDataModel.fromJson(v));
      });
    }
    pageIndex = json['pageIndex'];
    totalCount = json['totalCount'];
    shareImg = json['shareImg'];
    isSuccess = json['isSuccess'];
    code = json['code'];
    runSpanTime = json['runSpanTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['pageIndex'] = this.pageIndex;
    data['totalCount'] = this.totalCount;
    data['shareImg'] = this.shareImg;
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    data['runSpanTime'] = this.runSpanTime;
    return data;
  }
}

class TopShareDataModel {
  int id;
  String title;
  String image;
  String scontent;
  String url;
  String content;
  String seokeyword;
  String seodescription;
  String createtime;
  String updatetime;
  String row;
  String shareLink;
  String detailLink;

  TopShareDataModel(
      {this.id,
        this.title,
        this.image,
        this.scontent,
        this.url,
        this.content,
        this.seokeyword,
        this.seodescription,
        this.createtime,
        this.updatetime,
        this.row,
        this.shareLink,
        this.detailLink});

  TopShareDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    scontent = json['scontent'];
    url = json['url'];
    content = json['content'];
    seokeyword = json['seokeyword'];
    seodescription = json['seodescription'];
    createtime = json['createtime'];
    updatetime = json['updatetime'];
    row = json['row'];
    shareLink = json['shareLink'];
    detailLink = json['detailLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['scontent'] = this.scontent;
    data['url'] = this.url;
    data['content'] = this.content;
    data['seokeyword'] = this.seokeyword;
    data['seodescription'] = this.seodescription;
    data['createtime'] = this.createtime;
    data['updatetime'] = this.updatetime;
    data['row'] = this.row;
    data['shareLink'] = this.shareLink;
    data['detailLink'] = this.detailLink;
    return data;
  }
}