import 'package:flutter/material.dart';

import 'package:portofolio/gen/assets.gen.dart';

class DEveloperImage extends StatelessWidget {
  const DEveloperImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(Assets.images.developerBkImageDark.path, fit: BoxFit.cover),
        Image.asset(Assets.images.developer.path),
      ],
    );
  }
}
