import 'package:flutter/material.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/app_text_field.dart';

class LabeledTextField extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyles.lablell(
            context,
          ).copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        AppTextField(hint: hint, maxLines: maxLines),
      ],
    );
  }
}
