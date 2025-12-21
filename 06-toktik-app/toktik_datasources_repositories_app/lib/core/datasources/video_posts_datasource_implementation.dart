// TokTik App - Vertical Videos App
import 'package:toktik_app/core/data/local_video_posts.dart';
import 'package:toktik_app/core/datasources/video_posts_datasource.dart';
import 'package:toktik_app/core/entities/video_post.dart';
import 'package:toktik_app/core/models/local_video_model.dart';

class LocalVideoDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = localVideoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
