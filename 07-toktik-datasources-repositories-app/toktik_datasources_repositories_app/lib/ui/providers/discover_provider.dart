// TokTik App - Vertical Videos App
import 'package:flutter/material.dart';
import 'package:toktik_app/core/entities/video_post.dart';
import 'package:toktik_app/core/repositories/video_posts_repository.dart';
// import 'package:toktik_app/core/data/local_video_posts.dart';
// import 'package:toktik_app/core/models/local_video_model.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostsRepository videoPostsRepository;

  bool initialLoading = true;
  List<VideoPost> providerVideos = [];

  DiscoverProvider({required this.videoPostsRepository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = localVideoPosts
    //     .map(
    //       (localVideo) =>
    //           LocalVideoModel.fromJson(localVideo).toVideoPostEntity(),
    //     )
    //     .toList();
    final newVideos = await videoPostsRepository.getTrendingVideosByPage(1);

    providerVideos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
