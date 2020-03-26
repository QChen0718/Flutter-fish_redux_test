class NewsListModel {
  List<NewListData> data;
  int totalCount;
  bool isSuccess;
  int code;
  int runSpanTime;

  NewsListModel(
      {this.data,
        this.totalCount,
        this.isSuccess,
        this.code,
        this.runSpanTime});

  NewsListModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<NewListData>();
      json['data'].forEach((v) {
        data.add(new NewListData.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
    isSuccess = json['isSuccess'];
    code = json['code'];
    runSpanTime = json['runSpanTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = this.totalCount;
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    data['runSpanTime'] = this.runSpanTime;
    return data;
  }
}

class NewListData {
  int id;
  String title;
  String image;
  String releaseTime;
  String sContent;
  int readTime;
  String source;
  int isCollectedByCurrentUser;
  String attachment;
  int viewCount;
  int starCount;

  NewListData(
      {this.id,
        this.title,
        this.image,
        this.releaseTime,
        this.sContent,
        this.readTime,
        this.source,
        this.isCollectedByCurrentUser,
        this.attachment,
        this.viewCount,
        this.starCount});

  NewListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    releaseTime = json['releaseTime'];
    sContent = json['sContent'];
    readTime = json['readTime'];
    source = json['source'];
    isCollectedByCurrentUser = json['isCollectedByCurrentUser'];
    attachment = json['attachment'];
    viewCount = json['viewCount'];
    starCount = json['starCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['releaseTime'] = this.releaseTime;
    data['sContent'] = this.sContent;
    data['readTime'] = this.readTime;
    data['source'] = this.source;
    data['isCollectedByCurrentUser'] = this.isCollectedByCurrentUser;
    data['attachment'] = this.attachment;
    data['viewCount'] = this.viewCount;
    data['starCount'] = this.starCount;
    return data;
  }
}