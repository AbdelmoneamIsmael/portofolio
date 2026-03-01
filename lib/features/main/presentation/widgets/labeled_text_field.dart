import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/app_text_field.dart';

class LabeledTextField extends StatefulWidget {
  const LabeledTextField({
    super.key,
    required this.label,
    this.maxLines = 1,
    this.hint = '',
  });

  final String label;
  final int maxLines;
  final String hint;

  @override
  State<LabeledTextField> createState() => _LabeledTextFieldState();
}

class _LabeledTextFieldState extends State<LabeledTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: AppTextStyles.lablell(context).copyWith(
            fontWeight: FontWeight.w500,
            color: _isFocused
                ? Theme.of(context).primaryColor
                : Theme.of(context).textTheme.bodyLarge?.color,
          ),
          child: Text(
            widget.label,
            textAlign: TextAlign.start,
          )
              .animate(target: _isFocused ? 1 : 0)
              .scale(begin: const Offset(1, 1), end: const Offset(1.02, 1.02)),
        ),
        const SizedBox(height: 12),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: _isFocused
                ? [
                    BoxShadow(
                      color: Theme.of(context)
                          .primaryColor
                          .withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ]
                : null,
          ),
          child: AppTextField(
            hint: widget.hint,
            maxLines: widget.maxLines,
          ),
        )
            .animate(target: _isFocused ? 1 : 0)
            .scale(begin: const Offset(1, 1), end: const Offset(1.01, 1.01)),
      ],
    );
  }
}
