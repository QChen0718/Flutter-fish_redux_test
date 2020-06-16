class KHSingleton{
   String sort; // 排序方式（sort为null时，默认排序），0： 更新时间排序（默认排序）、1：最近访问时间排序、2：最新添加排序、3：最近成交时间排序、4：交易量排序
   String customerQueryType; // 客户查询类型，1：持仓客户、2：近期到账
   String keywords; // 模糊搜索关键字：支持姓名、标签
   String isRegister; // 是否注册App
   String isMobile; // 是否有手机号
   String isOrder;  // 是否成交
   String isWeChat; // 是否有微信号
   String channels; // 来源（多个来源用英文逗号分隔，如：手动添加,App注册）
   String isTag; // 是否有标签
   String tags; // 标签（多个标签用英文逗号分隔，如：标签A,标签B）
  KHSingleton(
      { this.keywords = "",
        this.isRegister = '',
        this.isMobile = '',
        this.isOrder = '',
        this.isWeChat = '',
        this.channels = '',
        this.isTag = '',
        this.tags = '',
        this.sort = "",
        this.customerQueryType = ""
      });
  //写一个单例
  static KHSingleton _instance;
  static KHSingleton getInstance() {
    if(_instance == null) {
      _instance = KHSingleton();
    }
    return _instance;
  }
}