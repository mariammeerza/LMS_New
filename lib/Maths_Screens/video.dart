import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;
  bool _isLoading=true;

@override
void initState() {
  super.initState();
  _controller = VideoPlayerController.asset(
    'assets/videos/basic_operations.mp4',
  )..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized
      setState(() {
        _isLoading=false;
      });
    });
  // print("Controller initialized: $_controller");
}

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Video Screen'),
    ),
    body: Center(
      child: _isLoading
      ? const CircularProgressIndicator()
      : _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    ),
    floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          )
  );
}


@override
void dispose(){
  super.dispose();
  _controller.dispose();
}
}

