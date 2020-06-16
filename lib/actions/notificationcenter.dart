typedef GetObject = Function(dynamic object);

class NotificationCenter {
  // 工厂模式
  factory NotificationCenter() => _getInstance();

  static NotificationCenter get instance => _getInstance();
  static NotificationCenter _instance;

  NotificationCenter._internal() {
    // 初始化
  }

  static NotificationCenter _getInstance() {
    if (_instance == null) {
      _instance = new NotificationCenter._internal();
    }
    return _instance;
  }

  //创建Map来记录名称
  Map<String, dynamic> postNameMap = Map<String, dynamic>();
//全局闭包变量，通过该闭包来触发通知方法
  GetObject getObject;

  //添加监听者方法
//  定义回调方法，赋值给全局闭包 objects(dynamic object)
  addObserver(String postName, objects(dynamic object)) {

    postNameMap[postName] = null;
    getObject = objects;
  }

  //发送通知传值
  //  传递的内容 object
  postNotification(String postName, dynamic object) {
    //检索Map是否含有postName
    if (postNameMap.containsKey(postName)) {

      postNameMap[postName] = object;
//      调用闭包会触发闭包方法来接收通知响应

      getObject(postNameMap[postName]);
    }

  }
}