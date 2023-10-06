import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isError = false;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    )..initialize().then((_) {
        setState(() {});
      }).onError((error, stackTrace) {
        setState(() {
          _isError = true;
        });
      });
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.pause();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _isError
        ? Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 45),
              color: theme.highlightColor,
              height: double.infinity,
              width: double.infinity,
              child: Center(child: Text('Ошибка воспроизведения')),
            ),
          )
        : _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(_controller),
                    Center(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 50),
                        reverseDuration: const Duration(milliseconds: 200),
                        child: _controller.value.isPlaying
                            ? const SizedBox.shrink()
                            : Container(
                                color: Colors.black26,
                                child: const Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 100.0,
                                    semanticLabel: 'Play',
                                  ),
                                ),
                              ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _controller.value.isPlaying ? _controller.pause() : _controller.play();
                      },
                    ),
                  ],
                ),
              )
            : Text('error');
  }
}
