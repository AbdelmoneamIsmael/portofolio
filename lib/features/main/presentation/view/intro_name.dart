import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/core/themes/styles/app_text_style.dart';
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
        Text(
          'hello'.tr(),
          style: AppTextStyles.bold(context).copyWith(fontSize: 40.sp),
        ),
        Text(
          'full_name'.tr(),
          style: AppTextStyles.semiBold(context).copyWith(fontSize: 60.sp),
        ),

        Text(
          'jop_title'.tr(),
          style: AppTextStyles.semiBold(context).copyWith(fontSize: 30.sp),
        ),
        const SizedBox(),
        const SizedBox(),
        Row(
          spacing: 16.w,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
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
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
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
        const SizedBox(),
        const SizedBox(),
        //social Links
        Center(
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
        const Spacer(),
      ],
    );
  }
}
