// TokTik App - Vertical Videos App
import 'package:toktik_app/core/entities/video_post.dart';

abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
