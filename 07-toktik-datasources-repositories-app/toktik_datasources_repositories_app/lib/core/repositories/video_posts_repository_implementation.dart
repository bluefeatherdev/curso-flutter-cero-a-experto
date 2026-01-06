// TokTik App - Vertical Videos App
import 'package:toktik_app/core/datasources/video_posts_datasource.dart';
import 'package:toktik_app/core/entities/video_post.dart';
import 'package:toktik_app/core/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImplementation implements VideoPostsRepository {
  final VideoPostsDatasource videoPostsDatasource;

  VideoPostsRepositoryImplementation({required this.videoPostsDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostsDatasource.getTrendingVideosByPage(page);
  }
}
