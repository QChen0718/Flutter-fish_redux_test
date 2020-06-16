
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_redux_router_qt/actions/appinfo.dart';
import 'package:flutter_fish_redux_router_qt/actions/tost.dart';
import 'package:flutter_fish_redux_router_qt/customer/components/listcell/state.dart';
import 'package:flutter_fish_redux_router_qt/models/customerlistmodel.dart';
import 'package:flutter_fish_redux_router_qt/network/api.dart';
import 'package:flutter_fish_redux_router_qt/network/request.dart';
import 'action.dart';
import 'state.dart';

Effect<CustomerState> buildEffect() {
  return combineEffects(<Object, Effect<CustomerState>>{
    CustomerAction.action: _onAction,
    Lifecycle.initState: _onInit
  });
}

void _onAction(Action action, Context<CustomerState> ctx) {
}

void _onInit(Action action, Context<CustomerState> ctx) {

  _loadData(ctx);

}
// 加载列表数据
_loadData(Context<CustomerState> ctx){
    Request.getInstance().get(API.REQUEST_POST_CUSTOMER, null, null, (succeck){
      var model = CustomerListModel.fromJson(succeck);
      if(model.isSuccess){
//        请求成功
        List<CustomerListcellState> listcell = [];
        model.data.forEach((submodel){
          CustomerListcellState customerListcellState = CustomerListcellState();
          customerListcellState.cellheaderimagename = APPInfo.HTTP_IMAGE_DOWNLOAD_REQUEST_URL + submodel.photo;
          customerListcellState.username = submodel.name;
          if(submodel.lastLoginTime !=null){
            customerListcellState.date = '最近访问：'+submodel.lastLoginTime;
          }else{
            customerListcellState.date = '最近访问：无';
          }

          customerListcellState.user_items = submodel.tagList;
          customerListcellState.numbers = submodel.totalPrice;
          customerListcellState.unit = '万';
          customerListcellState.description ='累计交易';
          listcell.add(customerListcellState);
        });
        ctx.dispatch(CustomerActionCreator.onInit(listcell));
      }else{
//        请求失败
        Toast.toast(ctx.context,msg: model.errMsg);
      }
    }, (error){

    });
}