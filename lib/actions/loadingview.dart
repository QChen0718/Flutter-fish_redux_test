import 'package:flutter/material.dart';

class LoadingView extends Dialog{
  final String loadingtitle;

  LoadingView({Key key,this.loadingtitle}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(12.0),
//      设置透明背景
      child: new Material(
        type: MaterialType.transparency,
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Center(
              child: new Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new Center(
                      child: Text(
                          '标题'
                      ),
                    ),
                    new Container(
                      child: Text(
                          '内容'
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}