import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/gen/assets.gen.dart';

class DEveloperImage extends StatefulWidget {
  const DEveloperImage({super.key});

  @override
  State<DEveloperImage> createState() => _DEveloperImageState();
}

class _DEveloperImageState extends State<DEveloperImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _floatingAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    _floatingAnimation = Tween<double>(begin: 0, end: -15).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Assets.images.developerBkImageDark.path,
          fit: BoxFit.cover,
        )
            .animate()
            .fadeIn(duration: const Duration(milliseconds: 800))
            .scale(begin: const Offset(1.1, 1.1), end: const Offset(1, 1)),
        AnimatedBuilder(
          animation: _floatingAnimation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _floatingAnimation.value),
              child: Image.asset(Assets.images.developer.path)
                  .animate()
                  .fadeIn(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 800),
                  )
                  .slideY(
                    begin: 0.2,
                    end: 0,
                    duration: const Duration(milliseconds: 800),
                  )
                  .then()
                  .shimmer(
                    delay: const Duration(milliseconds: 500),
                    duration: const Duration(milliseconds: 2000),
                    color: Colors.white.withOpacity(0.1),
                  ),
            );
          },
        ),
      ],
    );
  }
}
