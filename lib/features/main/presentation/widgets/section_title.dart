import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 48.w, height: 48.h),
        SizedBox(width: 20.w),
        Text(
          title.tr(),
          style: AppTextStyles.bold(context).copyWith(fontSize: 30.sp),
        ),
      ],
    );
  }
}
