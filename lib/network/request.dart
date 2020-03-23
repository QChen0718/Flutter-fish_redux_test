import 'package:dio/dio.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/globalConfig.dart';
//json 解析需要的，系统自带的
import 'dart:convert' ;

import 'package:flutter_fish_redux_router_qt/network/resultcode.dart';

enum Method{
  get,
  post
}
class Request{
  //写一个单例
  static Request _instance;

  Map<String,dynamic> nomalparams = {
    'appKey':APPInfo.APP_KEY,
    'timeStamp':APPInfo.timeStamp,
    'sign':APPInfo.sign,
    'version':'6.8.0'
  };
  static Request getInstance() {
    if(_instance == null) {
      _instance = Request();
    }
    return _instance;
  }

  Dio dio = new Dio();

  Request() {
//    设置请求头
    dio.options.headers = {
      "Accept-Version" : "2.1.0",
      "Content-Type" : "application/json"
    };
//    设置连接超时的时间 5 秒
    dio.options.connectTimeout = 5000;
//    接收超时的时间 3 秒
    dio.options.receiveTimeout = 3000;
//    是否开启网络请求日志
    dio.interceptors.add(LogInterceptor(requestBody: GlobalConfig.isDebug));
//    缓存相关类
  }
//  get请求
  get(String url,Map<String,dynamic> params,Function successCallBack,Function errorCallBack) async {
    _requestHttp(url, successCallBack,Method.get,params,errorCallBack);
  }
//  post请求
  post(String url,Map<String,dynamic> params,Function successCallBack,Function errorCallBack) async {
    _requestHttp(url, successCallBack,Method.post,params,errorCallBack);
  }
//  请求网络
  _requestHttp(String url,Function successCallBack,[Method method,Map<String,dynamic> params,Function errorCallBack]) async {
    Response response;
    try{
      switch(method){
        case Method.get:
          if(params != null && params.isNotEmpty){
            response = await dio.get(url,queryParameters: params);
          }else{
            response = await dio.get(url);
          }
          break;
        case Method.post:
          if(params != null && params.isNotEmpty){
            response = await dio.post(url,data: params);
          }else{
            response = await dio.post(url);
          }
          break;
      }
    }on DioError catch(error) {
//      请求错误处理
      Response errorResponse;
      if(error.response != null){
        errorResponse = error.response;
      }else{
        errorResponse = new Response(statusCode: 666);
      }
//      请求超时
      if(error.type == DioErrorType.CONNECT_TIMEOUT){
        errorResponse.statusCode = ResultCode.CONNECT_TIMEOUT;
      }
      else if(error.type == DioErrorType.RECEIVE_TIMEOUT){
        errorResponse.statusCode = ResultCode.RECEIVE_TIMEOUT;
      }
//      debug模式才打印
      if(GlobalConfig.isDebug){
        print('请求异常：' + error.toString());
        print('请求异常URL：'+url);
        print('请求头: ' + dio.options.headers.toString());
        print('method: ' + dio.options.method);
      }
      _error(errorCallBack,error.message);
      return '';
    }
//    debug模式打印相关数据
    if (GlobalConfig.isDebug) {
      print('请求url: ' + url);
      print('请求头: ' + dio.options.headers.toString());
      if (params != null) {
        print('请求参数: ' + params.toString());
      }
      if (response != null) {
        print('返回参数: ' + response.toString());
      }
    }
    String dataStr = json.encode(response.data);
    Map<String,dynamic> dataMap = json.decode(dataStr);
//    接口请求成功了，后台返回的错误结果
    if(dataMap == null || dataMap['state'] == 0) {
      _error(errorCallBack, '错误码：' + dataMap['errorCode'].toString() + '，' + response.data.toString());
    }else if(successCallBack != null){
//      请求接口回调出去
      successCallBack(dataMap);
    }
  }
//  错误接口统一处理，回调出去
  _error(Function errorCallBack, String error){
    if(errorCallBack != null) {
      errorCallBack(error);
    }
  }
}