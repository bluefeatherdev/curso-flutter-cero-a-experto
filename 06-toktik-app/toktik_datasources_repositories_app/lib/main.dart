// TokTik App - Vertical Videos App
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/core/datasources/video_posts_datasource_implementation.dart';
import 'package:toktik_app/core/repositories/video_posts_repository_implementation.dart';
import 'package:toktik_app/ui/providers/discover_provider.dart';
import 'package:toktik_app/ui/screens/discover_screen.dart';
import 'package:toktik_app/ui/themes/app_theme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPostsRepositoryImplementation videoPostsRepository =
        VideoPostsRepositoryImplementation(
          videoPostsDatasource: LocalVideoDatasource(),
        );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostsRepository: videoPostsRepository)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getThemeData(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
