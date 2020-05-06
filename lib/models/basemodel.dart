class BaseModel{
  int totalCount;
  bool isSuccess;
  String errMsg;

  BaseModel(this.totalCount, this.isSuccess, this.errMsg);
  @override
  BaseModel.fromJson(Map<String,dynamic> json){
    isSuccess = json['isSuccess'];
    errMsg = json['errMsg'];
    totalCount = json['totalCount'] !=null ? json['totalCount'] : 0;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    data['isSuccess'] = this.isSuccess;
    data['errMsg'] = this.errMsg;
    return data;
  }
}