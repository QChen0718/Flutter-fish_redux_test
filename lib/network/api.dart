class API {
  static const BASE_URL = 'https://test-api4app.1caifu.com/api/';
  //--------新的域名
  static const NEW_HTTP_REQUEST_URL = "https://testsaas-api.xiaohu.in/api/app/";

  static const HTTP_REQUEST_WEB_URL = "https://test-h5.1caifu.com/";
  static const kBillboardlistUrl = "http://www.devio.org/io/flutter_app/json/home_page.json";//首页热门帖子
//  获取banner数据
  static const REQUEST_URL_BANNERGETLIST = BASE_URL + "Site/BannerGetList";
//  登录接口
  static const REQUEST_URL_LOGIN = BASE_URL + "User/Login";
  // 获取每日财经头部标题
  static const REQUEST_GET_NEWSTYPE_TITLE = BASE_URL + "Site/GetNewsType";
  // 获取新闻列表
  static const REQUEST_URL_GET_NEWS_LIST = BASE_URL + "Site/GetNewsList";
  // 获取用户信息
  static const REQUEST_URL_GET_BASE_INFO_DETAIL = BASE_URL + "User/GetUserBaseInfoDetail";
  // 获取精品海报头部标题
  static const REQUEST_GET_RESOURCETYPE_TITLE = BASE_URL +  "Site/getAdResourceType";
  // 获取金融词，节气海报列表
  static const REQUEST_GET_ADRESOURCE_LIST = BASE_URL + "Site/getAdResourceList";
  //获取新闻类型列表
  static const REQUEST_GET_HOT_NEWS = BASE_URL + "Site/GetHotTopicNews";
  // 获取视频列表
  static const REQUEST_GET_VIDEO_LIST = BASE_URL + "Site/VideoList";
  // 获客中心/获客数据
  static const REQUEST_GET_USERDATA = NEW_HTTP_REQUEST_URL + "user/readRecord/GetUserData?userId=";
  // 获客中心/营销助手
  static const REQUEST_GET_RECORDTOP = NEW_HTTP_REQUEST_URL + "user/readRecord/GetRecordTop?userId=";
  // 获取用户信息
  static const REQUEST_GET_USERINFODATA = NEW_HTTP_REQUEST_URL + "user/getSimpleDetail/";

  // 获取客户列表
  static const REQUEST_GET_CUSTOMER_LIST = NEW_HTTP_REQUEST_URL + "user/customer?";
  // get获取客户信息，del删除客户信息，put修改客户信息
  static const REQUEST_GET_CUSTOMER = NEW_HTTP_REQUEST_URL +"user/customer/";
// 添加客户信息
  static const REQUEST_POST_CUSTOMER = NEW_HTTP_REQUEST_URL +"user/customer?";
// 添加客户标签
  static const REQUEST_PUT_ADDTAG = NEW_HTTP_REQUEST_URL+"user/customer/addTag";
// 移除客户标签
  static const REQUEST_PUT_REMOVETAG = NEW_HTTP_REQUEST_URL+"user/customer/removeTag";
// 获取客户标签列表
  static const REQUEST_GET_CUSTOMERTAG = NEW_HTTP_REQUEST_URL+"user/customerTag?uccId=";
// 删除我的标签
  static const REQUEST_DET_CUSTOMERTAG = NEW_HTTP_REQUEST_URL+"user/customerTag/";
// 获取客户交易信息
  static const REQUEST_GET_TRADEINFO = NEW_HTTP_REQUEST_URL+"user/customer/getTradeInfo/";
// 获取客户交易统计
  static const REQUEST_GET_TRADETOTAL = NEW_HTTP_REQUEST_URL+"user/customer/GetTradeTotal/";

// 获取客户合同
  static const REQUEST_GET_CUSTOMERCONTRACT = NEW_HTTP_REQUEST_URL+"trade/contract?pageIndex=%d&pageSize=10&UccId=%s";
// 获取客户确认书
  static const REQUEST_GET_CUSTOMERCONFIRMATION = NEW_HTTP_REQUEST_URL+"trade/confirmation?pageIndex=%d&pageSize=10&UccId=%s";

// 获取客户足迹

  static const REQUEST_GET_FOOTPRINT = NEW_HTTP_REQUEST_URL+"user/customer/getFootPrint?pageIndex=%d&pageSize=10&uccId=%s";

//  获取客户佣金列表
  static const REQUEST_GET_BROKERAGE = NEW_HTTP_REQUEST_URL+"trade/brokerage?pageIndex=%d&pageSize=10&uccId=%s";
//  h5链接 -----------------------------------------
  //热门资讯详情页
  static const REQUEST_WEB_URL_ZIXUN_DETAIL  = HTTP_REQUEST_WEB_URL + "app/wxnews/";
}