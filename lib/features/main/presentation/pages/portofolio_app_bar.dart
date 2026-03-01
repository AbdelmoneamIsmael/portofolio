
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/core/themes/colors/colors.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';

class PortofolioAppBar extends StatelessWidget {
  const PortofolioAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? DarkColors.backgroundColor
            : LightColors.backgroundColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w),

      child: Row(
        spacing: 18,
        children: [
          Text(
            'full_name'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 22.sp),
          ),
          const Spacer(),
          Text(
            'home'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 18.sp),
          ),
          Text(
            'about'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 18.sp),
          ),
          Text(
            'projects'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 18.sp),
          ),
          Text(
            'contact'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 18.sp),
          ),
        ],
      ),
    );
  }
}
