import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../themes/colors/colors.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    this.style,
    this.gradient,
    this.animate = false,
    this.textAlign = TextAlign.start,
    this.duration = const Duration(milliseconds: 1000),
  });

  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  final bool animate;
  final Duration duration;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final defaultGradient = LinearGradient(
      colors: isDark
          ? [DarkColors.primaryColor, DarkColors.secondButtonColor]
          : [LightColors.primaryColor, LightColors.secondButtonColor],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    Widget textWidget = ShaderMask(
      shaderCallback: (bounds) => (gradient ?? defaultGradient).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        textAlign: textAlign,
        style:
            style?.copyWith(color: Colors.white) ??
            const TextStyle(color: Colors.white),
      ),
    );

    if (animate) {
      textWidget = textWidget
          .animate()
          .fadeIn(duration: duration)
          .slideY(
            begin: -0.3,
            end: 0,
            duration: duration,
            curve: Curves.easeOut,
          );
    }

    return textWidget;
  }
}
