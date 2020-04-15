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
        'http://1caifu-file-public.oss-cn-hangzhou.aliyuncs.com/video/business-institute/'
            '%E5%BE%AE%E8%AF%BE%E4%BA%94%EF%BC%9A%E9%98%B3%E5%85%89%E7%A7%81%E5%8B%9F%E7%BC%98%E4%BD%95%E9%98%B3%E5%85%89-6bc06548959046dfb7cd77e2e7240202.mp4');
    ctx.state.chewieController = ChewieController(
      videoPlayerController: ctx.state.playerController,
      aspectRatio: 16/9,
      autoPlay: true,
      looping: true,
      allowFullScreen: true, //是否允许全屏
//      customControls:
    );
}
void _dispose(Action action,Context<VideoDetailState> ctx){
   ctx.state.playerController.dispose();
   ctx.state.chewieController.dispose();
}