import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoScreenController extends GetxController {
  late String urlVideo;
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  VideoScreenController({required this.urlVideo});

  @override
  void onInit() {
    super.onInit();
    initializePlayer();
  }


  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
        // 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
        urlVideo));
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.white,
        backgroundColor: Colors.white,
        bufferedColor: Colors.grey,
      ),
      placeholder: Container(
        color: Colors.white,
      ),
    );
    update();
  }
}
