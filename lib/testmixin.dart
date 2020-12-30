import 'package:flutter/material.dart';
import 'actions/mixins.dart';

class TestMiXin extends StatefulWidget with testmixin{
  @override
  _TestMiXinState createState() => _TestMiXinState();
}
class _TestMiXinState extends State<TestMiXin>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          '测试'
        ),
      ),
      body: new Container(),
    );
  }
}
