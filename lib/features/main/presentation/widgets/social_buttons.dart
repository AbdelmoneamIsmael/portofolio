import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/widgets/glass_container.dart';

class SocialButton extends StatefulWidget {
  final String icon;
  final VoidCallback onTap;
  const SocialButton({super.key, required this.icon, required this.onTap});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.15).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    _glowAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _controller.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _controller.reverse();
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: _isHovered
                      ? [
                          BoxShadow(
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.5 * _glowAnimation.value),
                            blurRadius: 15 * _glowAnimation.value,
                            spreadRadius: 2 * _glowAnimation.value,
                          ),
                        ]
                      : null,
                ),
                child: GlassContainer(
                  padding: EdgeInsets.all(12.w),
                  borderRadius: BorderRadius.circular(12.r),
                  blur: 5.0,
                  opacity: 0.1,
                  borderWidth: 1.0,
                  child: SvgPicture.asset(
                    widget.icon,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            )
                .animate()
                .fadeIn(duration: const Duration(milliseconds: 500))
                .scale(begin: const Offset(0.8, 0.8), end: const Offset(1, 1));
          },
        ),
      ),
    );
  }
}
