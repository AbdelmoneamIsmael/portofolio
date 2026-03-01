import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/animated_on_scroll.dart';
import 'package:portofolio/core/widgets/gradient_button.dart';
import 'package:portofolio/core/widgets/glass_container.dart';
import 'package:portofolio/features/main/presentation/widgets/labeled_text_field.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 600.w),
        child: GlassContainer(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          borderRadius: BorderRadius.circular(30.r),
          blur: 15.0,
          opacity: 0.15,
          borderWidth: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 200),
                offset: const Offset(0, 30),
                child: Text(
                  'Contact',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bold(context).copyWith(fontSize: 32.sp),
                ),
              ),
              SizedBox(height: 16.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 300),
                offset: const Offset(0, 30),
                child: Text(
                  "Interested in working together? Let's have a conversation.",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.lablell(context).copyWith(
                    fontSize: 16.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 400),
                offset: const Offset(0, 30),
                child: LabeledTextField(label: 'name'.tr()),
              ),
              SizedBox(height: 24.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 500),
                offset: const Offset(0, 30),
                child: LabeledTextField(label: 'email'.tr()),
              ),
              SizedBox(height: 24.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 600),
                offset: const Offset(0, 30),
                child: LabeledTextField(label: 'message'.tr(), maxLines: 5),
              ),
              SizedBox(height: 40.h),
              AnimatedOnScroll(
                delay: const Duration(milliseconds: 700),
                offset: const Offset(0, 30),
                child: GradientButton(
                  text: 'send_message'.tr(),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
