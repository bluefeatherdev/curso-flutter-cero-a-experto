// TokTik App - Vertical Videos App
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/ui/providers/discover_provider.dart';
import 'package:toktik_app/ui/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DiscoverProvider discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
          : VideoScrollableView(videos: discoverProvider.providerVideos),
    );
  }
}
