class MarkingModel {
  List<MarkingDataModel> data;
  MarkingModel({this.data});
  MarkingModel.fromJson(Map<String, dynamic> json) {

    if (json['data'] != null) {
      data = new List<MarkingDataModel>();
      json['data'].forEach((v) {
        data.add(new MarkingDataModel.fromJson(v));
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
class MarkingDataModel {
  String title;
  String createTime;

  MarkingDataModel({this.title, this.createTime});

  MarkingDataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    createTime = json['createTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['createTime'] = this.createTime;
    return data;
  }
}