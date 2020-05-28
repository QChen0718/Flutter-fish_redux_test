import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotoView extends StatefulWidget{
  File image;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SelectPhotoViewState();
  }
}
class _SelectPhotoViewState extends State<SelectPhotoView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xffffffff).withOpacity(0),
      height: Adapt.px(300),
      child: new Column(
        children: <Widget>[
          new Container(
            height: Adapt.px(160),
            width: Adapt.screenW() - Adapt.px(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Adapt.px(10)),
              color: Colors.white
            ),
            child: new Column(
              children: <Widget>[
                new GestureDetector(
                  onTap: () async{
                   var image = await ImagePicker.pickImage(source: ImageSource.camera);
                   setState(() {
                     widget.image = image;
                   });
                  },
                  child: new Container(
                    height: Adapt.px(80),
                    width: Adapt.screenW() - Adapt.px(30),
                    child: new Text(
                      '拍照',
                      style: TextStyle(
                        fontSize: Adapt.px(30),
                        color: Colors.blue,
                        height: 2
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: Adapt.px(1),

                        )
                      )
                    ),
                  ),
                ),
                new GestureDetector(
                  onTap: () async{
                    var image = await  ImagePicker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      widget.image = image;
                    });
                  },
                  child: new Container(
                    height: Adapt.px(80),
                    child: new Text(
                      '从相册选择',
                      style: TextStyle(
                          fontSize: Adapt.px(30),
                          color: Colors.blue,
                          height: 2
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}