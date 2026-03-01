import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/extentions/padding_extention.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/features/main/presentation/widgets/my_icons.dart';
import 'package:portofolio/gen/assets.gen.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(Assets.icons.about, width: 48.w, height: 48.h),
            SizedBox(width: 20.w),
            Text(
              'about_me_title'.tr(),
              style: AppTextStyles.bold(context).copyWith(fontSize: 30.sp),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Text(
          'about_me_desc'.tr(),
        ).withPadding(EdgeInsetsDirectional.only(start: 40.w)),
        SizedBox(height: 60.h),
        const MyIcons(),
      ],
    );
  }
}
