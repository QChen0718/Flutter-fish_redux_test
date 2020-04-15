import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_redux_router_qt/actions/adapt.dart';
import 'package:flutter_fish_redux_router_qt/actions/navbar.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(VideoDetailState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: new Column(
      children: <Widget>[
        new NavBar(
          titleStr: state.navtitle,
        ),
        Chewie(
          controller: state.chewieController,
        ),
//        FutureBuilder(
//          future: state.initializeVideoPlayerFuture,
//          builder: (context, snapshot) {
//            if (snapshot.connectionState == ConnectionState.done) {
//              // If the VideoPlayerController has finished initialization, use
//              // the data it provides to limit the aspect ratio of the video.
//              return AspectRatio(
//                aspectRatio: state.playerController.value.aspectRatio,
//                // Use the VideoPlayer widget to display the video.
//                child: VideoPlayer(state.playerController),
//              );
//            } else {
//              // If the VideoPlayerController is still initializing, show a
//              // loading spinner.
//              return Center(child: CircularProgressIndicator());
//            }
//          },
//        ),
        new FloatingActionButton(
            onPressed: (){
              state.playerController.value.isPlaying
                  ? state.playerController.pause()
                  : state.playerController.play();
            },
          child: new Icon(
            state.playerController.value.isPlaying? Icons.pause : Icons.play_arrow
          ),
        )
//        视频播放组件
//        new Chewie(
//          controller: new VideoPlayerController.network(state.videourl),
//
//        )
      ],
    ),
    bottomSheet: new Container(
        margin: EdgeInsets.only(bottom: Adapt.padBotH()),
       child: new SizedBox(
         width: Adapt.screenW(),
         height: Adapt.px(80),

         child: new MaterialButton(
          color: Color(0xffFF6633),
          onPressed: (){

          },
          child: new Center(
            child: new Text(
              '转发获客',
              style: new TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: Adapt.px(34)
              ),
            ),
          ),
        ),
      ),
    )
  );
}
