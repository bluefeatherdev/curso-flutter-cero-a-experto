// TokTik App - Vertical Videos App
import 'package:flutter/material.dart';
import 'package:toktik_app/core/data/local_video_posts.dart';
import 'package:toktik_app/core/entities/video_post.dart';
import 'package:toktik_app/core/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> providerVideos = [];

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = localVideoPosts
        .map(
          (localVideo) =>
              LocalVideoModel.fromJson(localVideo).toVideoPostEntity(),
        )
        .toList();

    providerVideos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
