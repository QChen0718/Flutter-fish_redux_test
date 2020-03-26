class API {
  static const BASE_URL = 'https://test-api4app.1caifu.com/api/';
  static const HTTP_REQUEST_WEB_URL = "https://test-h5.1caifu.com/";
  static const kBillboardlistUrl = "http://www.devio.org/io/flutter_app/json/home_page.json";//首页热门帖子
//  获取banner数据
  static const REQUEST_URL_BANNERGETLIST = BASE_URL + "Site/BannerGetList";
//  登录接口
  static const REQUEST_URL_LOGIN = BASE_URL + "User/Login";
  // 获取每日财经头部标题
  static const REQUEST_GET_NEWSTYPE_TITLE = BASE_URL + "Site/GetNewsType";
  //     获取新闻列表
  static const REQUEST_URL_GET_NEWS_LIST = BASE_URL + "Site/GetNewsList";

//  h5链接 -----------------------------------------
  //热门资讯详情页
  static const REQUEST_WEB_URL_ZIXUN_DETAIL  = HTTP_REQUEST_WEB_URL + "app/wxnews/";
}