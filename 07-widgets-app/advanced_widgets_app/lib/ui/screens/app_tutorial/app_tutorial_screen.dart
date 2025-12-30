// Flutter Widgets App - Advanced Widgets App
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final List<SlideInfo> slides = [
  SlideInfo(
    'Find healthy food',
    'Eu laborum excepteur ut esse eiusmod anim sint eu sit aliquip commodo minim laboris.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Wait for healthy food delivery',
    'Dolore consequat cupidatat Lorem ad quis do et nisi est tempor cillum pariatur Lorem.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Enjoy healthy food',
    'In deserunt ut esse reprehenderit et aute non eiusmod adipisicing incididunt nulla culpa non.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      final double page = pageController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _CustomSlide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
          ),

          Positioned(
            top: 50.0,
            right: 20.0,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text('Exit'),
            ),
          ),

          endReached
              ? Positioned(
                  right: 30.0,
                  bottom: 30.0,
                  child: FadeInRight(
                    from: 15.0,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Get Started'),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _CustomSlide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _CustomSlide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? titleStyle = Theme.of(context).textTheme.titleLarge;
    final TextStyle? captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20.0),
            Text(title, style: titleStyle),
            const SizedBox(height: 10.0),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
