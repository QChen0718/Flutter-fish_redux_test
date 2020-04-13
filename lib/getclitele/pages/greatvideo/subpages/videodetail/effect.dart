import 'package:chewie/chewie.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:video_player/video_player.dart';
import 'action.dart';
import 'state.dart';

Effect<VideoDetailState> buildEffect() {
  return combineEffects(<Object, Effect<VideoDetailState>>{
    VideoDetailAction.action: _onAction,
    Lifecycle.initState: _onInit,
    Lifecycle.dispose: _dispose
  });
}

void _onAction(Action action, Context<VideoDetailState> ctx) {
}
void _onInit(Action action, Context<VideoDetailState> ctx) {
    ctx.state.playerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    ctx.state.initializeVideoPlayerFuture = ctx.state.playerController.initialize();
//    设置循环播放
    ctx.state.playerController.setLooping(true);
    ctx.state.chewieController = ChewieController(
      videoPlayerController: ctx.state.playerController,
      aspectRatio: 1,
      autoPlay: true,
      looping: true
    );
}
void _dispose(Action action,Context<VideoDetailState> ctx){
   ctx.state.playerController.dispose();
   ctx.state.chewieController.dispose();
}