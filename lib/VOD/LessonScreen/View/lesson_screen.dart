// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:geniusapp/Model/level.dart';
// import 'package:geniusapp/RemoteServices/remote_services.dart';
// import 'package:geniusapp/VOD/LessonScreen/Controller/video_screen_controller.dart';
// import 'package:get/get.dart';

// class VideoLessonScreen extends StatelessWidget {
//   final Lesson lesson;
//   const VideoLessonScreen({
//     super.key,
//     required this.lesson,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(lesson.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//          child: //Text('${RemoteServices.baseUrl}${lesson.mainPicture.url}')
//         Column(

//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             GetBuilder<VideoScreenController>(
//               init: VideoScreenController(
//                   urlVideo:
//                       '${RemoteServices.baseUrl}${lesson.mainPicture.url}'),
//               builder: (controller) => ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: SizedBox(
//                   height: 300,
//                   child: Center(
//                     child: controller.chewieController != null &&
//                             controller.chewieController!.videoPlayerController
//                                 .value.isInitialized
//                         ? Chewie(controller: controller.chewieController!)
//                         : const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircularProgressIndicator(),
//                               SizedBox(width: 10),
//                               Text('LOADING ...'),
//                             ],
//                           ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 8,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   lesson.title,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text('Presented By ${lesson.teacherId.toString()}')
//               ],
//             ),
//             const SizedBox(height: 8),
//             Text(
//               lesson.description,
//             ),
//             const SizedBox(height: 16),
//             const Row(
//               children: [
//                 CircleAvatar(
//                     backgroundColor: Colors.black,
//                     child:
//                         //  Icon(
//                         //   Icons.bookmark_outline,
//                         //   color: Colors.white,
//                         // ),
//                         Text(
//                       'data',
//                       style: TextStyle(color: Colors.white),
//                     )),
//                 SizedBox(width: 8),
//                 Text('Save it'),
//               ],
//             ),
//             const SizedBox(height: 16),
//             const Divider(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String lessonUrlVid;
  final String lessonTitle;
  final String lessonTeacher;

  const VideoPlayerScreen({
    super.key,
    required this.lessonUrlVid,
    required this.lessonTitle,
    required this.lessonTeacher,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.lessonUrlVid),
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(false);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.lessonTitle} By ${widget.lessonTeacher}'),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  // Use the VideoPlayer widget to display the video.
                  child: VideoPlayer(_controller),
                ),
                CircleAvatar(
                  backgroundColor: Colors.purple[50],
                  child: IconButton(
                    onPressed: () {
                      // Wrap the play or pause in a call to `setState`. This ensures the
                      // correct icon is shown.
                      setState(() {
                        // If the video is playing, pause it.
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          // If the video is paused, play it.
                          _controller.play();
                        }
                      });
                    },
                    icon: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                )
              ],
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Wrap the play or pause in a call to `setState`. This ensures the
      //     // correct icon is shown.
      //     setState(() {
      //       // If the video is playing, pause it.
      //       if (_controller.value.isPlaying) {
      //         _controller.pause();
      //       } else {
      //         // If the video is paused, play it.
      //         _controller.play();
      //       }
      //     });
      //   },
      //   // Display the correct icon depending on the state of the player.
      //   child: Icon(
      //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //   ),
      // ),
    );
  }
}
