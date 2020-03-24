class LoginModel {
  Data data;
  bool isSuccess;
  int code;
  int runSpanTime;

  LoginModel({this.data, this.isSuccess, this.code, this.runSpanTime});

  LoginModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    isSuccess = json['isSuccess'];
    code = json['code'];
    runSpanTime = json['runSpanTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['isSuccess'] = this.isSuccess;
    data['code'] = this.code;
    data['runSpanTime'] = this.runSpanTime;
    return data;
  }
}

class Data {
  int id;
  int adminId;
  String name;
  String mobile;
  String email;
  String userName;
  bool isAuth;
  String password;

  Data(
      {this.id,
        this.adminId,
        this.name,
        this.mobile,
        this.email,
        this.userName,
        this.isAuth,
        this.password,
      });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    adminId = json['adminId'];
    name = json['name'];
    mobile = json['mobile'];
    email = json['email'];
    userName = json['userName'];
    isAuth = json['isAuth'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['adminId'] = this.adminId;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['userName'] = this.userName;
    data['isAuth'] = this.isAuth;
    data['password'] = this.password;
    return data;
  }
}