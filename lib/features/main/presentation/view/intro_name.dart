import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
import 'package:portofolio/core/widgets/gradient_text.dart';
import 'package:portofolio/core/widgets/animated_on_scroll.dart';
import 'package:portofolio/features/main/presentation/widgets/social_buttons.dart';
import 'package:portofolio/gen/assets.gen.dart';

class IntroName extends StatelessWidget {
  const IntroName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20.sp,
      children: [
        const Spacer(),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 200),
          offset: const Offset(0, 30),
          child: Text(
            'hello'.tr(),
            style: AppTextStyles.bold(context).copyWith(fontSize: 40.sp),
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 400),
          offset: const Offset(0, 30),
          child: GradientText(
            'full_name'.tr(),
            style: AppTextStyles.semiBold(context).copyWith(fontSize: 60.sp),
            animate: true,
          ),
        ),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 600),
          offset: const Offset(0, 30),
          child: Text(
            'jop_title'.tr(),
            style: AppTextStyles.semiBold(context).copyWith(fontSize: 30.sp),
          ),
        ),
        const SizedBox(),
        const SizedBox(),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 800),
          offset: const Offset(0, 30),
          child: Row(
            spacing: 16.w,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          Assets.icons.whatsapp,
                          fit: BoxFit.scaleDown,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Text('get_project'.tr()),
                    ],
                  ),
                )
                    .animate()
                    .shimmer(
                      delay: const Duration(milliseconds: 1000),
                      duration: const Duration(milliseconds: 1500),
                      color: Colors.white.withOpacity(0.3),
                    ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).primaryColor,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.file_open),
                      SizedBox(width: 10.w),
                      Text('my_cv'.tr()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(),
        const SizedBox(),
        AnimatedOnScroll(
          delay: const Duration(milliseconds: 1000),
          offset: const Offset(0, 30),
          child: Center(
            child: Wrap(
              spacing: 30.w,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: [
                SocialButton(icon: Assets.icons.github, onTap: () {}),
                SocialButton(icon: Assets.icons.linkedin, onTap: () {}),
                SocialButton(icon: Assets.icons.face, onTap: () {}),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
