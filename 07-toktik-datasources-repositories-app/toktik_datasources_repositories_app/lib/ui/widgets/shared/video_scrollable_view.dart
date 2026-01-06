// TokTik App - Vertical Videos App
import 'package:flutter/material.dart';
import 'package:toktik_app/core/entities/video_post.dart';
import 'package:toktik_app/ui/widgets/shared/video_buttons.dart';
import 'package:toktik_app/ui/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: <Widget>[
            // Video player + gradient
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            // Buttons
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(videoPost: videoPost),
            ),
          ],
        );
      },
    );
  }
}
