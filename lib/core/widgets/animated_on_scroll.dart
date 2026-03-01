import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedOnScroll extends StatelessWidget {
  const AnimatedOnScroll({
    super.key,
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 600),
    this.offset = const Offset(0, 30),
    this.fade = true,
    this.slide = true,
    this.scale = false,
    this.curve = Curves.easeOut,
  });

  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset offset;
  final bool fade;
  final bool slide;
  final bool scale;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    Widget animatedWidget = child;

    if (fade) {
      animatedWidget = animatedWidget.animate()
          .fadeIn(
            delay: delay,
            duration: duration,
            curve: curve,
          );
    }

    if (slide) {
      animatedWidget = animatedWidget.animate()
          .slide(
            delay: delay,
            duration: duration,
            begin: offset,
            end: Offset.zero,
            curve: curve,
          );
    }

    if (scale) {
      animatedWidget = animatedWidget.animate()
          .scale(
            delay: delay,
            duration: duration,
            begin: const Offset(0.8, 0.8),
            end: const Offset(1, 1),
            curve: curve,
          );
    }

    return animatedWidget;
  }
}

